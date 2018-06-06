export LDFLAGS="$(echo $LDFLAGS | sed 's;-z now;-Wl,-znow;g;s;-z relro;-Wl,-zrelro;g')" &&
export CC=clang &&
export CXX=clang++ &&
export AR=ar &&
export NM=nm &&

if [ "$USE_CCACHE" = "y" ]; then
  export CCACHE_SLOPPINESS=time_macros
fi

# This is the make step. According to its --help the default -j is
# derived from your number of CPUs.
ninja -v -C out/Release chrome chrome_sandbox chromedriver &&

prepare_install &&

# installing
install -D out/Release/chrome ${CHROMIUM_HOME}/chrome &&
install -Dm4755 -o root -g root out/Release/chrome_sandbox ${CHROMIUM_HOME}/chrome-sandbox &&
cp out/Release/{chrome_{100,200}_percent,resources}.pak out/Release/{*.bin,chromedriver} ${CHROMIUM_HOME} &&
install -Dm644 -t ${CHROMIUM_HOME}/locales out/Release/locales/*.pak &&

#find ${CHROMIUM_HOME}/ -name '*.d' -type f -delete &&

install -Dm644 chrome/app/resources/manpage.1.in /usr/share/man/man1/chromium.1 &&
sedit "s/@@MENUNAME@@/Chromium/g;s/@@PACKAGE@@/chromium/g;s/@@USR_BIN_SYMLINK_NAME@@/chromium/g" /usr/share/man/man1/chromium.1 &&
install -m 0644 -D $SCRIPT_DIRECTORY/chromium.desktop /usr/share/applications/chromium.desktop &&

if [ -d /usr/share/icons/hicolor/ ]; then
  for size in 22 24 48 64 128 256; do
    install -m 0644 -D chrome/app/theme/chromium/product_logo_${size}.png /usr/share/icons/hicolor/${size}x${size}/apps/chromium.png
  done &&

  for size in 16 32; do
    install -Dm644 chrome/app/theme/default_100_percent/chromium/product_logo_${size}.png /usr/share/icons/hicolor/${size}x${size}/apps/chromium.png
  done
fi &&

install -m 755 $SCRIPT_DIRECTORY/chromium-launcher.sh ${CHROMIUM_HOME} &&
ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium-browser &&
ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium &&
ln -sf ${CHROMIUM_HOME}/chromedriver /usr/bin/chromedriver &&

install -Dm644 LICENSE /usr/share/licenses/chromium/LICENSE &&

# Don't forget to comment out this line below when readding icu4c system dependency (keeps breaking between releases)
install -Dm644 out/Release/icudtl.dat /usr/lib/chromium/icudtl.dat &&

# symlink to lunar location for browser plugins, should be /usr/lib/lunar/plugins
ln -sf /usr/lib/lunar/plugins ${CHROMIUM_HOME}/plugins &&

if [ ! -f /etc/$MODULE/chromium.default ]; then
  mkdir -p /etc/$MODULE &&
  echo "# Default settings for chromium. This file is sourced by /bin/bash from" > /etc/$MODULE/chromium.default &&
  echo "# the chromium launcher." >> /etc/$MODULE/chromium.default &&
  echo "# Options to pass to chromium." >> /etc/$MODULE/chromium.default &&
  echo "#CHROMIUM_FLAGS=\"\"" >> /etc/$MODULE/chromium.default
fi &&

install -Dm644 libwidevinecdm.so /usr/lib/chromium/libwidevinecdm.so
