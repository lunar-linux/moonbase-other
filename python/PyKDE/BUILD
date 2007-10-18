(

  patch_it $SOURCE_CACHE/$SOURCE1 1 &&

  python ./configure.py $OPTS       &&
  default_make                      &&
  mkdir -p /usr/share/PyKDE         &&
  cp -Rf examples /usr/share/PyKDE

) > $C_FIFO 2>&1
