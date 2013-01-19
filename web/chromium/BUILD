(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit "s/'-Werror'/''/" build/common.gypi  &&

  cp -f $SCRIPT_DIRECTORY/nacl.gypi chrome/  &&

  echo Fixing dumb CPU optimizations please wait in patience...
  find . -type f -print0 | xargs -0 sed -i \
  -e 's/-mcpu=/-march=/g' \
  -e 's/-mtune=/-march=/g' \
  -e 's/=pentium4/=native/g' \
  -e 's/=i386/=native/g' \
  -e 's/=i486/=native/g' \
  -e 's/=core2/=native/g' \
  -e 's/=pentiumpro/=native/g' \
  -e 's/=pentium/=native/g' \
  -e 's/=k6/=native/g' &&

  export CHROMIUM_HOME=/usr/lib/$MODULE &&

  mkdir -p "${SOURCE_DIRECTORY}"/.gyp  &&
  cat << EOF > "${SOURCE_DIRECTORY}"/.gyp/include.gypi
{
        'target_defaults': {
                 'cflags': [ '${CFLAGS// /','}' ],
                'ldflags': [ '${LDFLAGS// /','}' ],
        },
        'variables': {
  q              'remove_webcore_debug_symbols' : 1,
        },
}
EOF

  if module_installed libjpeg-turbo; then
    OPTS+=" -Duse_libjpeg_turbo=1"
  fi &&

  OPTS+=" -Duse_system_bzip2=1 -Duse_system_libevent=1 -Duse_system_libjpeg=1 -Duse_system_libpng=1 -Duse_system_libxml=1 -Duse_system_libxslt=1 -Duse_system_zlib=1 -Duse_system_ffmpeg=0 -Dproprietary_codecs=1 -Dwerror= -Ddisable_sse2=1 -Dlinux_sandbox_path=${CHROMIUM_HOME}/chrome_sandbox -Dlinux_sandbox_chrome_path=${CHROMIUM_HOME}/chrome -Dfastbuild=1 -Dlinux_strip_binary=1 -Dlinux_use_seccomp_sandbox=1 -Dlinux_use_gold_binary=0 -Dlinux_use_gold_flags=0 -Dffmpeg_branding=Chrome"

  # set the target arch here
  if [ "`arch`" == "x86_64" ]; then
    OPTS+=" -Dtarget_arch=x64"
  else
    OPTS+=" -Dtarget_arch=ia32"
  fi

  gcc_ver=`installed_version gcc | cut -d. -f1,2`
  if [[ $gcc_ver == "4.4" ]]; then
    OPTS+=" -Dno_strict_aliasing=1 -Dgcc_version=44"
  fi

  # This is the configure step
  build/gyp_chromium -f make build/all.gyp $OPTS -Drelease_extra_cflags="$CFLAGS" --depth=. &&

  # This is the make step
  make V=1 chrome chrome_sandbox BUILDTYPE=Release &&

  make -C third_party/ffmpeg -f ffmpeg.Makefile &&

  prepare_install &&

  # installing
  install -D out/Release/chrome ${CHROMIUM_HOME}/chrome &&
  install -Dm4755 -o root -g root out/Release/chrome_sandbox ${CHROMIUM_HOME}/chrome_sandbox &&

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
  ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium &&

  install -Dm644 LICENSE /usr/share/licenses/chromium/LICENSE &&

  install -m 755 out/Release/xdg-settings ${CHROMIUM_HOME} &&

  # symlink to lunar location for browser plugins, should be /usr/lib/lunar/plugins
  ln -sf /usr/lib/lunar/plugins ${CHROMIUM_HOME}/plugins &&

  # theme installation
  mkdir -p /usr/share/themes/Chromium &&
  cp -a $SOURCE_DIRECTORY/chrome/app/theme /usr/share/themes/Chromium/ &&

  ln -sf ${CHROMIUM_HOME}/chromium-launcher.sh /usr/bin/chromium

) > $C_FIFO 2>&1
