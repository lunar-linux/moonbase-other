(

  sedit "s:-O3:$CFLAGS -Os:g" configure  &&

  OPTS+=" --enable-shared"  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_build  &&

  install -d /usr/lib/python$MAJOR                        &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py     \
                $SOURCE_DIRECTORY/Tools/i18n/pygettext.py  \
                /usr/lib/python$MAJOR/                    &&

  # Docs
  mv Misc/{cheatsheet,NEWS} .  &&
  chmod 644 cheatsheet NEWS README  &&
  gather_docs cheatsheet NEWS README

) > $C_FIFO 2>&1

  make compileall
