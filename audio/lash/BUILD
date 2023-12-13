export LDFLAGS='-ldl -lm -ltirpc'

OPTS+=" CFLAGS=-I/usr/include/tirpc"

export PYTHON=python2
sed -i 's#env python#&2#' clients/lash_control &&

default_build
