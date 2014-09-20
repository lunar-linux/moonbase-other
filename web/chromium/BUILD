
  # This is the configure step
  build/gyp_chromium -f make build/all.gyp $OPTS -Drelease_extra_cflags="$CFLAGS" --depth=. &&

  # This is the make step
  make V=1 chrome chrome_sandbox BUILDTYPE=Release -j${MAKES} &&
  make -C third_party/ffmpeg -f ffmpeg.Makefile BUILDTYPE=Release &&

  prepare_install &&

  # installing
  install -D out/Release/chrome ${CHROMIUM_HOME}/chrome &&
  install -Dm4755 -o root -g root out/Release/chrome_sandbox ${CHROMIUM_HOME}/chrome-sandbox &&

  cp out/Release/{*.pak,libffmpegsumo.so} ${CHROMIUM_HOME} &&

  cp -a out/Release/locales out/Release/resources ${CHROMIUM_HOME}/ &&

  find ${CHROMIUM_HOME}/ -name '*.d' -type f -delete &&

  install -Dm644 out/Release/chrome.1 /usr/share/man/man1/chromium.1 &&

  install -m 0644 -D $SCRIPT_DIRECTORY/chromium.desktop /usr/share/applications/chromium.desktop &&

  if [ -d /usr/share/icons/hicolor/ ] ; then 
    for size in 22 24 48 64 128 256; do
      install -m 0644 -D \
        chrome/app/theme/chromium/product_logo_${size}.png /usr/share/icons/hicolor/${size}x${size}/apps/chromium.png
    done
  fi &&

  install -m 755 $SCRIPT_DIRECTORY/chromium-launcher.sh ${CHROMIUM_HOME} &&
  ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium-browser &&
  ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium &&

  install -Dm644 LICENSE /usr/share/licenses/chromium/LICENSE &&

  install -m 755 out/Release/xdg-settings ${CHROMIUM_HOME} &&

  # symlink to lunar location for browser plugins, should be /usr/lib/lunar/plugins
  ln -sf /usr/lib/lunar/plugins ${CHROMIUM_HOME}/plugins &&

  # theme installation
  mkdir -p /usr/share/themes/Chromium &&
  cp -a $SOURCE_DIRECTORY/chrome/app/theme /usr/share/themes/Chromium/ &&

  if [ ! -f /etc/$MODULE/chromium.default ] ; then
      mkdir -p /etc/$MODULE &&
      echo "# Default settings for chromium. This file is sourced by /bin/bash from" > /etc/$MODULE/chromium.default &&
      echo "# the chromium launcher." >> /etc/$MODULE/chromium.default &&
      echo "# Options to pass to chromium." >> /etc/$MODULE/chromium.default &&
      echo "#CHROMIUM_FLAGS=\"\"" >> /etc/$MODULE/chromium.default
  fi 
