(

  #Somehow I believe this might/should be logged as a bug to the glibc guys...
  sedit 's/^all: all-redirect/all: all-redirect $(MKDOC)/' \
          bfd/doc/Makefile.in &&
  ./configure  --host=$BUILD             \
               --target=sparc64-linux    \
               --prefix=/opt/lunar/binutils-sparc64 &&
  make  tooldir=/opt/lunar/binutils=sparc64 &&
  prepare_install             &&
  make  tooldir=/opt/lunar/binutils-sparc64 install  &&
  cd /opt/lunar/binutils-sparc64 &&
  rm -rf man info share &&
  cd bin &&
  rm ar as ld nm ranlib strip

) > $C_FIFO 2>&1
