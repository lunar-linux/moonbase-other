(
  OO_DIR="/opt/lunar/openoffice-src-de"
  
  sedit "/^ARCH_FLAGS\*=/d" solenv/inc/unxlngi{4,5,6}.mk &&

  # All of the options have been carefully chosen. Don't edit them unless you
  # really know what you're doing  

  OPTS="$OPTS --prefix=$OO_DIR --disable-qadevooo --with-lang=de \
              --disable-fontooo --disable-odk --enable-libart \
              --disable-mathmldtd --enable-cairo --with-mozilla-version=1.7.5 \
              --enable-mozilla --disable-binfilter --enable-xrender-link \
              --without-fonts --without-ppds --without-afms \
              --with-system-stdlibs --without-nas --with-system-zlib \
              --with-system-jpeg --with-system-expat --with-system-freetype \
              --with-system-libxml --without-system-db \
              --with-system-xrender-headers --with-epm=internal \
              --with-use-shell=bash --with-x --with-package-format=native \
              --with-build-version=LunarLinux" &&

  if module_installed sane-backends ; then
    OPTS="$OPTS --with-system-sane-header";
  fi &&

  if module_installed sun-jdk; then
    JAVA_VERSION="`installed_version sun-jdk`"
    OPTS="$OPTS --with-jdk-home=/usr/lib/jdk${JAVA_VERSION}";
  else
    JAVA_VERSION="`installed_version j2sdk`";
    OPTS="$OPTS --with-jdk-home=/usr/lib/j2sdk${JAVA_VERSION}";
  fi &&

  # Apply mandatory and optional patches

  patch_it $SOURCE2 0 &&

  if ! module_installed Linux-PAM ; then
    patch_it $SOURCE3 0;
  fi &&

  # As long as OOo-src does not compile against nss it needs its own mozilla
  # tarball (and it also compiles its own mozilla)
  mkdir -p $SOURCE_DIRECTORY/moz/download &&
  cp $SOURCE_CACHE/$SOURCE4 $SOURCE_DIRECTORY/moz/download/ &&

  cd $SOURCE_DIRECTORY/config_office &&

  autoreconf &&
  default_config &&
 
  # OOo might fail if those are set to some strange values
  umask 0022 &&
  unset LANG LC_ALL &&

  cd $SOURCE_DIRECTORY &&

  ./bootstrap &&
  sedit "s/-lxml2/-lxml2\ -lexpat/g" LinuxIntelEnv.Set.sh &&
  source LinuxIntelEnv.Set.sh &&
  dmake &&

  prepare_install &&

  # make install is not reliable
  # FIXME: How do we detect this directory in an elegant way?
  cd instsetoo_native/unxlngi6.pro/OpenOffice/native/install/de/linux-2.6-intel/buildroot/opt &&

  rm -rf $OO_DIR &&
  cp -rv openoffice.org2.1 $OO_DIR &&

  # Install icons for the .desktop files
  mkdir -p -m0755 /usr/share/icons/{HighContrast,hicolor} &&
  cd $SOURCE_DIRECTORY/sysui/desktop/icons &&
  cp -rv HighContrast/*x* /usr/share/icons/HighContrast &&
  cp -rv hicolor/*x* /usr/share/icons/hicolor &&
  gtk-update-icon-cache --force /usr/share/icons/hicolor &&

  # Desktop integration
  mkdir -p -m0755 /usr/share/applications &&
  cd $OO_DIR/share/xdg &&
  sedit 's/bin\/sprinteradmin/bin\/spadmin/' printeradmin.desktop &&

  for file in *.desktop ; do
    sedit '/Exec/d' $file;
    echo "Exec=$OO_DIR/program/s`echo $file | sed 's/.desktop//'`" >> $file;
    sedit '/Icon/d' $file;
    echo "Icon=`echo $file | sed 's/.desktop//'`" >> $file
    install -m644 $file /usr/share/applications;
  done &&
  update-desktop-database
 
) > $C_FIFO 2>&1
