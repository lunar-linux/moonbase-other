(

  prepare_install   &&

  mkdir -p /usr/lib/chrome-linux &&
  chmod 755 /usr/lib/chrome-linux &&
  cp -av $SOURCE_DIRECTORY/* /usr/lib/chrome-linux/ &&
  find /usr/lib/chrome-linux -type f -exec chmod go+r {} \; &&
  find /usr/lib/chrome-linux -type d -exec chmod go+rx {} \; &&
  chmod go+x /usr/lib/chrome-linux/{chrome,chrome_sandbox,chrome-wrapper,libffmpegsumo.so,xdg-settings} &&
  chmod 4711 /usr/lib/chrome-linux/nacl_helper_bootstrap &&

  ln -sf /opt/lunar/plugins /usr/lib/${MODULE}/plugins &&
  if [ ! -h /usr/bin/chrome-linux ]; then
    ln -snf /usr/lib/chrome-linux/chrome-wrapper /usr/bin/chrome-linux
  fi

  # Create the required symlinks
  ln -sf /usr/lib/libnspr4.so /usr/lib/${MODULE}/libnspr4.so.0d  &&
  ln -sf /usr/lib/libplc4.so /usr/lib/${MODULE}/libplc4.so.0d    &&
  ln -sf /usr/lib/libplds4.so /usr/lib/${MODULE}/libplds4.so.0d  &&
  ln -sf /usr/lib/libnss3.so /usr/lib/${MODULE}/libnss3.so.1d         &&
  ln -sf /usr/lib/libnssutil3.so /usr/lib/${MODULE}/libnssutil3.so.1d &&
  ln -sf /usr/lib/libsmime3.so /usr/lib/${MODULE}/libsmime3.so.1d     &&
  ln -sf /usr/lib/libssl3.so /usr/lib/${MODULE}/libssl3.so.1d         &&

  # copy the man page
  cp -a chrome.1 /usr/share/man/man1/chrome-linux.1 &&

  # install the chrome icon
  cp -a product_logo_48.png /usr/share/pixmaps/chrome-linux.png

) > $C_FIFO 2>&1
