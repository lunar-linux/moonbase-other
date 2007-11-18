(

#This group of sedits are for glibc-2.7
  sedit "s:if (futimens:if (gz_futimens:" gzip.c
  sedit "s:int futimens:int gz_futimens:" lib/utimens.h
  sedit "s:futimens (int fd:gz_futimens (int fd:" lib/utimens.c
  sedit "s:return futimens (-1:return gz_futimens (-1:" lib/utimens.c

  VR=`lvu version glibc | cut -d. -f2` &&

  if [ $VR = 6 ]; then
     sedit "s/futimens/gl_&/" $(grep -lr futimens *)
  fi &&

  ./configure --build=$BUILD             \
              --prefix=/usr              \
              --bindir=/bin              \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
