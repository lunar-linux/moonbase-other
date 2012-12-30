(

  patch_it $SOURCE2 1 &&


  sedit "s:wtf/Complex.h:complex.h:" Source/WebCore/platform/audio/FFTFrame.cpp Source/WebCore/webaudio/RealtimeAnalyser.cpp Source/WebCore/platform/audio/Biquad.h &&

  OPTS+=" --with-target=x11             \
          --with-unicode-backend=icu    \
          --with-font-backend=freetype  \
          --enable-xslt                 \
          --enable-optimizations        \
          --disable-glibtest            \
          --with-gtk=2.0                \
          --enable-video                \
          --disable-web-audio           \
          --disable-gtk-doc-html"      &&

  #make build work even if gtk-doc is not installed
  if ! module_installed gtk-doc ; then
    sed -i '/gtkdoc --rebase/s:^:# :' GNUmakefile.in
  fi &&

  #stolen from blfs, avoid race condition in build with multiple makes
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
  make install &&
  install 'Programs/GtkLauncher' '/usr/bin/GtkLauncher' &&

  # add symlink for plugin detection
  ln -sf /usr/lib/lunar/plugins /usr/lib/browser-plugins

) > $C_FIFO 2>&1
