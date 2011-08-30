(


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
          --disable-gtk-doc-html"      &&

  default_build &&

  install 'Programs/GtkLauncher' '/usr/bin/GtkLauncher' 

) > $C_FIFO 2>&1
