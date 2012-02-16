(

# This fixes some import not being installed when compiled against kernels 3.x
  if [ `uname -r | cut -c 1` == "3" ] ; then
    mkdir Lib/plat-linux3 &&
    cp Lib/plat-linux2/* Lib/plat-linux3/
  fi &&

  sedit "s:-O3:$CFLAGS -Os:g" configure  &&

  OPTS+=" --enable-shared"  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_build &&

  install -d /usr/lib/python$MAJOR                        &&
  install -m755 $SOURCE_DIRECTORY/Tools/i18n/msgfmt.py     \
                $SOURCE_DIRECTORY/Tools/i18n/pygettext.py  \
                /usr/lib/python$MAJOR/                    &&

  # Docs
  mv Misc/{cheatsheet,NEWS} .  &&
  chmod 644 cheatsheet NEWS README  &&
  gather_docs cheatsheet NEWS README

) > $C_FIFO 2>&1

  
