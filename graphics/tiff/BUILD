unset CC CXX
(

cat  <<  EOF  >>  config.site
DIR_BIN="/usr/bin"
DIR_LIB="/usr/lib"
DIR_INC="/usr/include"
DIR_MAN="/usr/share/man"
DIR_HTML="$DOCUMENT_DIRECTORY/tiff"
GCOPTS=""
OPTIMIZER="$CFLAGS"
EOF

  ./configure  --noninteractive  &&
  make                           &&
  prepare_install                &&
  make    install

) > $C_FIFO 2>&1
