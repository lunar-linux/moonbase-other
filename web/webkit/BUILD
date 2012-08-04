(
  patch_it $SOURCE2 1 &&

  OPTS+=" --with-target=x11             \
          --with-unicode-backend=icu    \
          --with-font-backend=freetype  \
          --enable-xslt                 \
          --enable-svg                  \
          --enable-svg-animation        \
          --enable-svg-fonts            \
          --enable-svg-foreign-object   \
          --enable-svg-as-image         \
          --enable-optimizations        \
	  --enable-video                \
	  --disable-glibtest            \
          --with-gtk=2.0                \
          --disable-gtk-doc-html"      &&

  #make build work even if gtk-doc is not installed
  if ! module_installed gtk-doc ; then
    sed -i '/gtkdoc --rebase/s:^:# :' GNUmakefile.in 
  fi &&

  #stolen from blfs, avoid race condition in build with multiple makes
  if [[ $MAKES -gt 1 ]] ; then
    default_config && 
    error_count=0 &&
    until default_make
    do
      if (( $((error_count++)) > 4 )) ; then
        echo Too Many Errors &&
        break
      fi
    done &&
    unset error_count &&
    make install
  else
    default_build
  fi &&

  install 'Programs/GtkLauncher' '/usr/bin/GtkLauncher'

) > $C_FIFO 2>&1
