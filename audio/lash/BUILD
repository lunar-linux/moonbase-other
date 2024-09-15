export LDFLAGS='-ldl -lm -ltirpc'

export PYTHON=python2
sed -i 's#env python#&2#' clients/lash_control &&

./configure --prefix=/usr CFLAGS=-I/usr/include/tirpc &&

default_make
