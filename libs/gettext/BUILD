(

  if !( module_installed emacs ); then
      OPTS+=" --without-emacs"
  fi  &&

  ./configure  --build=$BUILD             \
               --host=$BUILD              \
               --prefix=/usr              \
               --sysconfdir=/etc          \
               --mandir=/usr/share/man    \
               --infodir=/usr/share/info  \
               --disable-csharp           \
               --without-libintl-prefix   \
               --disable-static           \
               $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
