(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  #Somehow I believe this might/should be logged as a bug to the glibc guys...
  sedit 's/^all: all-redirect/all: all-redirect $(MKDOC)/' \
                    bfd/doc/Makefile.in  &&

  aclocal  &&
  autoconf &&

  OPTS+=" --host=$BUILD"     &&
  default_config             &&
  make tooldir=/usr          &&
  prepare_install            &&
  make tooldir=/usr install  &&
  make tooldir=/usr install-info &&
  mkdir -p $DOCUMENT_DIRECTORY/binutils &&
  cp -p binutils/NEWS binutils/ChangeLog $DOCUMENT_DIRECTORY/binutils

) > $C_FIFO 2>&1
