(

  sedit "s:-O3:$CFLAGS -Os:g" configure  &&

  OPTS="$OPTS --enable-shared"  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_build  &&

  install -d /usr/lib/python$MAJOR_VERSION                &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py     \
                $SOURCE_DIRECTORY/Tools/i18n/pygettext.py  \
                /usr/lib/python$MAJOR_VERSION/            &&

  gather_docs Misc/*

) > $C_FIFO 2>&1

  make compileall
