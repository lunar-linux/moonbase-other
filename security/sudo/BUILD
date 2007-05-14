EDITOR=`which  $EDITOR  2>/dev/null`  ||
EDITOR=`which  nano`                  &&

(

  OPTS="$OPTS --with-editor=$EDITOR"

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_build

) > $C_FIFO 2>&1
