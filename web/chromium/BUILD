(

  sedit "s/'-Werror'/''/" build/common.gypi &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
# sedit '/mozzconf.h/d' third_party/WebKit/WebCore/platform/image-decoders/zlib/zconf.h &&

  export CHROMIUM_HOME=/usr/lib/$MODULE

  mkdir -p "${SOURCE_DIRECTORY}"/.gyp &&
  cat << EOF > "${SOURCE_DIRECTORY}"/.gyp/include.gypi
{
	'target_defaults': {
		'cflags': [ '${CFLAGS// /','}' ],
		'ldflags': [ '${LDFLAGS// /','}' ],
	},
}
EOF

  OPTS="$OPTS -Duse_system_bzip2=1 -Duse_system_libevent=1 -Duse_system_libjpeg=1 -Duse_system_libpng=1 -Duse_system_libxml=1 -Duse_system_libxslt=1"

  OPTS="$OPTS -Dlinux_sandbox_path=${CHROMIUM_HOME}/chrome_sandbox -Dlinux_sandbox_chrome_path=${CHROMIUM_HOME}/chrome"

  # set the target arch here
  if [ "`arch`" == "x86_64" ]; then
    OPTS="$OPTS -Dtarget_arch=x64"
  else
    OPTS="$OPTS -Dtarget_arch=ia32"
  fi  

  gcc_ver=`installed_version gcc | cut -d. -f1,2`
  if [[ $gcc_ver == "4.4" ]]; then
    OPTS="$OPTS -Dno_strict_aliasing=1 -Dgcc_version=44"
  fi

  # This is the configure step
  build/gyp_chromium -f make build/all.gyp $OPTS --depth=. &&

  # This is the make step
  make V=1 chrome chrome_sandbox BUILDTYPE=Release &&

  prepare_install &&

  mkdir -p ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome_sandbox ${CHROMIUM_HOME} &&
  chmod 4755 ${CHROMIUM_HOME}/chrome_sandbox &&
  cp -a out/Release/xdg-settings ${CHROMIUM_HOME} &&
  install -m 755 $SCRIPT_DIRECTORY/chromium-launcher.sh ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome.pak ${CHROMIUM_HOME} &&
  cp -a out/Release/locales ${CHROMIUM_HOME} &&
  cp -a out/Release/resources ${CHROMIUM_HOME} &&
  install -m 644 out/Release/chrome.1 /usr/share/man/man1/ &&
  install -m 644 out/Release/chrome.1 /usr/share/man/man1/chromium.1 &&
  if module_installed ffmpeg; then
    ln -sf /usr/lib/libavcodec.so.52 ${CHROMIUM_HOME}/libavcodec.so.52
    ln -sf /usr/lib/libavformat.so.52 ${CHROMIUM_HOME}/libavformat.so.52
    ln -sf /usr/lib/libavutil.so.49 ${CHROMIUM_HOME}/libavutil.so.49
  fi &&

  # symlink to lunar location for browser plugins, should be /opt/lunar/plugins
  ln -sf /opt/lunar/plugins ${CHROMIUM_HOME}/plugins &&

  # icon installation
  mkdir -p /usr/share/pixmaps &&
  install -m644 out/Release/product_logo_48.png /usr/share/pixmaps/chromium-browser.png &&

  # theme installation
  mkdir -p /usr/share/themes/Chromium &&
  cp -a $SOURCE_DIRECTORY/chrome/app/theme /usr/share/themes/Chromium/ &&

  ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium

) > $C_FIFO 2>&1
