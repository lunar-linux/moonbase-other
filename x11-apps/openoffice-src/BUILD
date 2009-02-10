(

  if module_installed qt3; then
   . /etc/profile.d/qt3.rc
  fi &&

  if module_installed kdelibs3; then
   . /etc/profile.d/kde3.rc
  fi &&

  . /etc/profile.d/pkgconfig.rc &&

  OO_DIR="/opt/lunar/openoffice-src"

  RM_DESK_TOP="math extension printeradmin base calc draw impress writer"

  # There are symlinks left over if openoffice-bin is installed and
  # they do not get removed and the BUILD will tank near the end of
  # the compile, this takes care of that.
  for FILE in ${RM_DESK_TOP} ; do
      rm -f /usr/share/applications/${FILE}.desktop || exit 1
    done &&

  sedit "/^ARCH_FLAGS\*=/d" solenv/inc/unxlngi{4,6}.mk &&
  ARCH_FLAGS=$CXXFLAGS

  # All of the options have been carefully chosen. Don't edit them unless you
  # really know what you're doing

  OPTS="$OPTS --prefix=$OO_DIR --enable-dbus --disable-dbgutil --disable-static-gtk \
              --disable-fontooo --disable-odk --disable-debug --enable-opengl  \
              --disable-mathmldtd --enable-cairo --with-mozilla-version=1.7.5  \
              --enable-mozilla --enable-binfilter --enable-xrender-link        \
              --without-fonts --without-ppds --without-afms   \
              --with-system-stdlibs --with-system-zlib --enable-minimizer      \
              --with-system-jpeg --with-system-expat --with-system-freetype    \
              --with-system-libxml --with-system-db --disable-symbols --enable-Xaw \
              --with-system-xrender-headers --with-epm=internal --enable-pdfimport \
              --with-use-shell=bash --with-x --with-package-format=native      \
              --with-build-version=LunarLinux --enable-presenter-console \
              --enable-wiki-publisher --enable-ogltrans --enable-report-builder \
              --with-system-cairo --with-lang=en --with-dict=ENUS" &&

  if module_installed sane-backends ; then
    OPTS="$OPTS --with-system-sane-header";
  fi &&

  if module_installed sun-jdk; then
  # hsqldb 3rdparty compilation fault will break OO build
  # we can pull out hsqldb 1.9.0 from svn,
  # or downgrade JDK to 1.5 only for OO build:
    cd $SOURCE_DIRECTORY;
    chmod +x $SOURCE8;
    ./$SOURCE8 --accept-license --unpack;
    OPTS="$OPTS --with-jdk-home=$SOURCE_DIRECTORY/jdk1.5.0_17";
  else
    JAVA_VERSION="`installed_version j2sdk`";
    OPTS="$OPTS --with-jdk-home=/usr/lib/j2sdk${JAVA_VERSION}";
  fi &&

  # Apply mandatory and optional patches

  patch_it $SOURCE2 0 &&

  # As long as OOo-src does not compile against nss it needs its own mozilla
  # tarball (and it also compiles its own mozilla)
  mkdir -p $SOURCE_DIRECTORY/moz/download &&
  cp $SOURCE_CACHE/$SOURCE3 $SOURCE_DIRECTORY/moz/download/ &&

  cd $SOURCE_DIRECTORY/config_office &&

  autoreconf &&
  default_config &&

  # OOo might fail if those are set to some strange values
  umask 0022 &&
  unset LANG LC_ALL &&

  cd $SOURCE_DIRECTORY &&

  ./bootstrap &&
  sedit "s/-lxml2/-lxml2\ -lexpat/g" LinuxX86Env.Set.sh &&
  source LinuxX86Env.Set.sh &&
  dmake &&

  prepare_install &&

  # make install is not reliable
  # FIXME: How do we detect this directory in an elegant way?
  cd instsetoo_native/unxlngi6.pro/OpenOffice/native/install/en-US/linux-2.6-intel/buildroot/opt &&

  rm -rf $OO_DIR &&
  mkdir -p $OO_DIR &&
  cp -rv openoffice.org* $OO_DIR &&

  # Install icons for the .desktop files
  mkdir -p -m0755 /usr/share/icons &&
  cd $SOURCE_DIRECTORY/sysui/desktop/icons &&
  (find . -name CVS -type d -exec rm -rf {} \; &> /dev/null || true) &&
  cp -rv locolor /usr/share/icons &&
  cp -rv hicolor /usr/share/icons &&
  gtk-update-icon-cache --force /usr/share/icons/hicolor &&

  # Desktop integration
  mkdir -p -m0755 /usr/share/applications &&
  cd $OO_DIR/openoffice.org3/share/xdg &&
  rm -f qstart.desktop &&

  for file in *.desktop ; do
    sedit '/Exec/d' $file;
    echo "Exec=$OO_DIR/openoffice.org3/program/s`echo $file | sed 's/.desktop//'`" >> $file;
    sedit '/Icon/d' $file;
    echo "Icon=`echo ${file}.png | sed 's/.desktop//'`" >> $file;
    install -m644 $file /usr/share/applications;
  done &&

  sedit 's/sprinteradmin$/spadmin/' printeradmin.desktop &&
  install -m644 printeradmin.desktop /usr/share/applications &&

  update-desktop-database

) > $C_FIFO 2>&1
