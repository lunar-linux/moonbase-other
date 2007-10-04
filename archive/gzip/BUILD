(

VR=`lvu version glibc | cut -d. -f2` &&
if [ $VR = 6 ]; then
sedit "s/futimens/gl_&/" $(grep -lr futimens *)
fi &&
  ./configure --build=$BUILD             \
              --prefix=/usr              \
              --bindir=/bin              \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man   &&
  default_make 

) > $C_FIFO 2>&1
