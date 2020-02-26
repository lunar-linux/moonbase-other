OPTS+=" --sysconfdir=/etc/openmpi \
        --enable-shared \
        --enable-mpi-cxx \
        --enable-builtin-atomics \
        --enable-mpi-thread-multiple \
        --disable-static \
        --without-slurm" &&

# required for valgrind 3.15.0
OPTS+=" --enable-mpi1-compatibility" &&

default_build
