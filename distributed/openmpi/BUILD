OPTS+=" --sysconfdir=/etc/openmpi \
        --libdir=/usr/lib/openmpi \
        --enable-shared \
        --enable-mpi-cxx \
        --enable-builtin-atomics \
        --disable-static \
        --without-slurm \
        --without-lfs"

LDFLAGS="${LDFLAGS} -Wl,-z,noexecstack"

if [ -f /usr/bin/gfortran ] && [ "$FORTRAN" == "y" ]; then
   FC=/usr/bin/gfortran
fi &&

if in_depends $MODULE valgrind; then
   # required for valgrind 3.15.0
   OPTS+=" --enable-mpi1-compatibility \
           --enable-memchecker"
fi &&

default_build
