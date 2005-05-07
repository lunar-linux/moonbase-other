(

  cat  <<  EOF  >>  Makefile.common
PREFIX		=	/usr
BIN_DIR		=	/usr/bin
LOCALEDIR	=	/usr/share/locale
PLUGINS_DIR	=	/usr/share/emelfm/plugins
DOC_DIR		=	/usr/share/emelfm/docs
CC		=	gcc  $CFLAGS
EOF

  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
