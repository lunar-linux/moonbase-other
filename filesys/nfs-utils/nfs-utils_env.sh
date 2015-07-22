#!/bin/bash
# Lunar Linux configuration
. /etc/config.d/nfs-common
. /etc/config.d/nfs-server

NFS_UTILS_CONFIG=/run/sysconfig/nfs-utils

[[ -d /run/sysconfig ]] || mkdir /run/sysconfig

cat<<EOF> $NFS_UTILS_CONFIG
# From /etc/config.d/nfs-common
STATDARGS="$STATD_OPTS" 
SMNOTIFYARGS="$SMNOTIFY_OPTS"
RPCIDMAPDARGS="$IDMAPD_OPTS"
GSSDARGS="$GSSD_OPTS"

# From /etc/config.d/nfs-server
RPCMOUNTDARGS="$MOUNTD_OPTS"
RPCNFSDARGS="$NFSD_OPTS"
SVCGSSDARGS="$SVCGSSD_OPTS"
EOF
