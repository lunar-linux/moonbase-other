(
  if module_is_expired gettext ; then
    set_module_config OLD_VER=$(installed_version gettext)
  fi

  ./configure  --build=$BUILD            \
               --host=$BUILD             \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --mandir=/usr/share/man   \
	       --infodir=/usr/share/info \
	       --disable-csharp          \
	       --without-libintl-prefix  \
               $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
