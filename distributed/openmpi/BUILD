OPTS+=" --sysconfdir=/etc/openmpi \
        --libdir=/usr/lib/openmpi \
        --enable-shared \
        --enable-builtin-atomics \
        --disable-static \
        --without-slurm \
        --without-moab \
        --without-sge"

LDFLAGS="${LDFLAGS} -Wl,-z,noexecstack"

if [ -f /usr/bin/gfortran ] && [ "$FORTRAN" = "y" ]; then
   FC=/usr/bin/gfortran
fi &&

default_build &&

install -dm 755 /usr/lib/pkgconfig
for i in ompi-c.pc ompi-cxx.pc ompi-f77.pc ompi-f90.pc ompi.pc; do
    ln -sf "/usr/lib/openmpi/pkgconfig/${i}" /usr/lib/pkgconfig/
done
