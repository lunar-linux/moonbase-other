(

  prepare_install   &&
  message "${MESSAGE_COLOR}Installing Chrome ${VERSION}...${DEFAULT_COLOR}"  &&
  cd /opt/lunar &&
  unpack $SOURCE &&
  chmod 755 /opt/lunar/chrome-linux &&

  ln -sf /opt/lunar/plugins /opt/lunar/${MODULE}/plugins &&
  if [ ! -h /usr/bin/chrome-linux ]; then
    ln -snf /opt/lunar/chrome-linux/chrome-wrapper /usr/bin/chrome-linux
  fi

  # Adjust permission from the zip file
  cd /opt/lunar/${MODULE} &&
  chmod 755 chrome chrome_sandbox chrome-wrapper libffmpegsumo.so xdg-settings &&
  chmod -R 644 chrome.1 chrome.pak locales resources product_logo_48.png &&

  # Create the required symlinks
  ln -sf /usr/lib/nspr/libnspr4.so /opt/lunar/${MODULE}/libnspr4.so.0d  &&
  ln -sf /usr/lib/nspr/libplc4.so /opt/lunar/${MODULE}/libplc4.so.0d    &&
  ln -sf /usr/lib/nspr/libplds4.so /opt/lunar/${MODULE}/libplds4.so.0d  &&
  ln -sf /usr/lib/libnss3.so /opt/lunar/${MODULE}/libnss3.so.1d         &&
  ln -sf /usr/lib/libnssutil3.so /opt/lunar/${MODULE}/libnssutil3.so.1d &&
  ln -sf /usr/lib/libsmime3.so /opt/lunar/${MODULE}/libsmime3.so.1d     &&
  ln -sf /usr/lib/libssl3.so /opt/lunar/${MODULE}/libssl3.so.1d         &&

  # copy the man page
  cp -a chrome.1 /usr/share/man/man1/chrome-linux.1 &&

  # install the chrome icon
  cp -a product_logo_48.png /usr/share/pixmaps/chrome-linux.png

) > $C_FIFO 2>&1
