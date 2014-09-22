
  mkdir -p /usr/lib/lunar/plugins &&
  prepare_install &&

  install opt/google/chrome/PepperFlash/* /usr/lib/lunar/plugins &&

# So you don't need to fiddle with this yourself.
  mkdir -p /etc/chromium &&
  if [ ! -f /etc/chromium/pepper-flash ] ; then
    PP_VER=$(sed -n 's/.*"version": "\(.*\)",.*/\1/p' opt/google/chrome/PepperFlash/manifest.json) &&
    FLAPPER="/usr/lib/lunar/plugins/libpepflashplayer.so" &&
    echo -n "CHROMIUM_FLAGS=\"\${CHROMIUM_FLAGS} " > pepper-flash &&
    echo -n "--ppapi-flash-path=$FLAPPER " >> pepper-flash &&
    echo "--ppapi-flash-version=$PP_VER\"" >> pepper-flash &&
    install pepper-flash /etc/chromium/
  fi
