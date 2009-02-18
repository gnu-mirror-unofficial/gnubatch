/* Xb_varrd.c -- delete variable

   Copyright 2009 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <sys/types.h>
#include <string.h>
#include <winsock.h>
#include "xbapi.h"
#include "xbapi_in.h"
#include "netmsg.h"

extern int	xb_read(const SOCKET, char *, unsigned),
		xb_write(const SOCKET, char *, unsigned),
		xb_rmsg(const struct api_fd *, struct api_msg *),
		xb_wmsg(const struct api_fd *, struct api_msg *);
			
extern struct api_fd *xb_look_fd(const int);

extern void xb_mode_unpack(Btmode *, const Btmode *);

static int var_readrest(struct api_fd * fdp, apiBtvar *result)
{
	int	ret;
	struct	varnetmsg	res;

	if  ((ret = xb_read(fdp->sockfd, (char *) &res, sizeof(res))) != 0)
		return  ret;

	/* And now do all the byte-swapping */

	memset(result, '\0', sizeof(apiBtvar));
	result->var_id.hostid = res.vid.hostid;
	result->var_id.slotno = ntohl(res.vid.slotno);
	result->var_c_time = ntohl(res.nm_c_time);
	result->var_type = res.nm_type;
	result->var_flags = res.nm_flags;
	strncpy(result->var_name, res.nm_name, BTV_NAME);
	strncpy(result->var_comment, res.nm_comment, BTV_COMMENT);
	xb_mode_unpack(&result->var_mode, &res.nm_mode);
	if  ((result->var_value.const_type = res.nm_consttype) == CON_STRING)
		strncpy(result->var_value.con_un.con_string, res.nm_un.nm_string, BTC_VALUE);
	else
		result->var_value.con_un.con_long = ntohl(res.nm_un.nm_long);
	return  XB_OK;

}
int	xb_varread(const int fd, const unsigned flags, const slotno_t slotno, apiBtvar *result)
{
	int			ret;
	struct	api_fd		*fdp = xb_look_fd(fd);
	struct	api_msg		msg;

	if  (!fdp)
		return  XB_INVALID_FD;
	msg.code = API_VARREAD;
	msg.un.reader.flags = htonl(flags);
	msg.un.reader.seq = htonl(fdp->vserial);
	msg.un.reader.slotno = htonl(slotno);
	if  ((ret = xb_wmsg(fdp, &msg)))
		return  ret;
	if  ((ret = xb_rmsg(fdp, &msg)))
		return  ret;
	if  (msg.un.r_reader.seq != 0)
		fdp->vserial = ntohl(msg.un.r_reader.seq);
	if  (msg.retcode != 0)
		return  (SHORT) ntohs(msg.retcode);

	/* The message is followed by the var details,
	   held in varnetmsg format. */

	return  var_readrest(fdp, result);
}

int	xb_varfindslot(const int fd, const unsigned flags, const char *name, const netid_t nid, slotno_t *slotno)
{
	int		ret;
	struct	api_fd	*fdp = xb_look_fd(fd);
	struct	api_msg		msg;
	char	vname[BTV_NAME+1];

	if  (!fdp)
		return  XB_INVALID_FD;

	strncpy(vname, name, BTV_NAME);
	vname[BTV_NAME] = '\0';

	msg.code = API_FINDVARSLOT;
	msg.un.varfind.flags = htonl(flags);
	msg.un.varfind.netid = nid;
	if  ((ret = xb_wmsg(fdp, &msg)))
		return  ret;
	if  ((ret = xb_write(fdp->sockfd, vname, sizeof(vname))))
		return  ret;
	if  ((ret = xb_rmsg(fdp, &msg)))
		return  ret;
	if  (msg.un.r_find.seq != 0)
		fdp->jserial = ntohl(msg.un.r_find.seq);
	if  (msg.retcode != 0)
		return  (SHORT) ntohs(msg.retcode);
	if  (slotno)
		*slotno = ntohl(msg.un.r_find.slotno);
	return  XB_OK;
}

int	xb_varfind(const int fd, const unsigned flags, const char * name, const netid_t nid, slotno_t *slotno, apiBtvar *result)
{
	int		ret;
	struct	api_fd	*fdp = xb_look_fd(fd);
	struct	api_msg		msg;
	char	vname[BTV_NAME+1];

	if  (!fdp)
		return  XB_INVALID_FD;

	strncpy(vname, name, BTV_NAME);
	vname[BTV_NAME] = '\0';

	msg.code = API_FINDVAR;
	msg.un.varfind.flags = htonl(flags);
	msg.un.varfind.netid = nid;
	if  ((ret = xb_wmsg(fdp, &msg)))
		return  ret;
	if  ((ret = xb_write(fdp->sockfd, vname, sizeof(vname))))
		return  ret;
	if  ((ret = xb_rmsg(fdp, &msg)))
		return  ret;
	if  (msg.un.r_find.seq != 0)
		fdp->jserial = ntohl(msg.un.r_find.seq);
	if  (msg.retcode != 0)
		return  (SHORT) ntohs(msg.retcode);
	if  (slotno)
		*slotno = ntohl(msg.un.r_find.slotno);
	return  var_readrest(fdp, result);
}
