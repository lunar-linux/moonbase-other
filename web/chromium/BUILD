(

  sedit "s/'-Werror'/''/" build/common.gypi  &&

  echo Fixing dumb CPU optimizations please wait in patience...
  find . -type f -exec sed -i \
  -e 's/-mcpu=/-march=/g' \
  -e 's/-mtune=/-march=/g' \
  -e 's/=pentium4/=native/g' \
  -e 's/=i386/=native/g' \
  -e 's/=i486/=native/g' \
  -e 's/=core2/=native/g' \
  -e 's/=pentiumpro/=native/g' \
  -e 's/=pentium/=native/g' \
  -e 's/=k6/=native/g' {} \; &&

  export CHROMIUM_HOME=/usr/lib/$MODULE

  mkdir -p "${SOURCE_DIRECTORY}"/.gyp  &&
  cat << EOF > "${SOURCE_DIRECTORY}"/.gyp/include.gypi
{
        'target_defaults': {
                 'cflags': [ '${CFLAGS// /','}' ],
                'ldflags': [ '${LDFLAGS// /','}' ],
        },
}
EOF

  if module_installed libjpeg-turbo; then
  OPTS="$OPTS -Duse_libjpeg_turbo=1"
  fi &&

  OPTS="$OPTS -Duse_system_bzip2=1 -Duse_system_libevent=1 -Duse_system_libjpeg=1 -Duse_system_libpng=1 \
  -Duse_system_libxml=1 -Duse_system_libxslt=1 -Dbuildtype=Official -Dfastbuild=1 -Duse_system_zlib=1 \
  -Dproprietary_codecs=1 -Dlinux_strip_binary=1 -Dlinux_use_seccomp_sandbox=1 -Dffmpeg_branding=Chrome \
  -Dlinux_sandbox_path=${CHROMIUM_HOME}/chrome_sandbox -Dlinux_sandbox_chrome_path=${CHROMIUM_HOME}/chrome"

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
#  build/gyp_chromium -f make build/all.gyp $OPTS --depth=. &&
   build/gyp_chromium --depth=. -Ddisable_sse2=1 -Duse_system_bzip2=1 -Duse_system_libevent=1 -Duse_system_libjpeg=1 -Duse_system_libpng=1 -Duse_system_libxml=1 -Duse_system_zlib=1 -Duse_system_sqlite=1 -Duse_cups=1 -Duse_gconf=0 -Duse_gnome_keyring=0 -Dlinux_link_gnome_keyring=0 -Dlinux_sandbox_path=${CHROMIUM_HOME}/chrome_sandbox -Dlinux_sandbox_chrome_path=${CHROMIUM_HOME}/chrome -Dproprietary_codecs=1 -Dtarget_arch=ia32 -Dwerror= &&
  # This is the make step
  make V=1 chrome chrome_sandbox BUILDTYPE=Release &&

  # Make missing libffmpegsumo.so
  make -C third_party/ffmpeg -f ffmpeg.Makefile &&

  prepare_install &&

  mkdir -p ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome_sandbox ${CHROMIUM_HOME} &&
  chmod 4755 ${CHROMIUM_HOME}/chrome_sandbox &&
  cp -a out/Release/xdg-settings ${CHROMIUM_HOME} &&
  install -m 755 $SCRIPT_DIRECTORY/chromium-launcher.sh ${CHROMIUM_HOME} &&
  cp -a out/Release/chrome.pak ${CHROMIUM_HOME} &&
  cp -a out/Release/resources.pak ${CHROMIUM_HOME} &&
  cp -a out/Release/locales ${CHROMIUM_HOME} &&
  cp -a out/Release/resources ${CHROMIUM_HOME} &&
  install -m 644 out/Release/chrome.1 /usr/share/man/man1/ &&
  install -m 644 out/Release/chrome.1 /usr/share/man/man1/chromium.1 &&
  install -m 644 third_party/ffmpeg/out/Debug/libffmpegsumo.so ${CHROMIUM_HOME} &&
  if module_installed ffmpeg; then
    ln -sf /usr/lib/libavcodec.so.52 ${CHROMIUM_HOME}/libavcodec.so.52
    ln -sf /usr/lib/libavformat.so.52 ${CHROMIUM_HOME}/libavformat.so.52
    ln -sf /usr/lib/libavutil.so.50 ${CHROMIUM_HOME}/libavutil.so.50
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
