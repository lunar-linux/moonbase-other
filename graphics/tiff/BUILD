unset CC CXX
(
patch_it $SOURCE_CACHE/$SOURCE2 1

cat  <<  EOF  >>  config.site
DIR_BIN="/usr/bin"
DIR_LIB="/usr/lib"
DIR_INC="/usr/include"
DIR_MAN="/usr/share/man"
DIR_HTML="$DOCUMENT_DIRECTORY/tiff"
GCOPTS=""
OPTIMIZER="$CFLAGS"
EOF

  default_build

) > $C_FIFO 2>&1
