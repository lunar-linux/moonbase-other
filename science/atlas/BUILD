if [ ! -f /usr/bin/gfortran ]; then
  OPTS+=" --nof77"
fi &&

mkdir $MODULE-build &&
cd $MODULE-build &&

OPTS+=" --shared \
        --prefix=/usr \
        --incdir=/usr/include \
        --cripple-atlas-performance \
        --with-netlib-lapack-tarfile=/var/spool/lunar/lapack-`lvu version lapack`.tar.gz"

../configure -Fa alg -fPIC  $OPTS &&

default_make
