(

# To fix:dtint.hxx:41:8: error: using typedef-name 'Display' after 'struct'
# Take from http://bugs.gentoo.org/344993
  sedit "s:\#ifndef _XLIB_H_:\#if \!defined(_XLIB_H_) \&\& \!defined(_X11_XLIB_H_):" vcl/unx/inc/dtint.hxx &&

# So it will compile with gcc-4.5
  sedit "s:__ <= 4:__ <= 5:g" cppu/inc/uno/lbnames.h&&

# This sedit is needed for the configure to complete with current db.
  sedit "s:seq 1 7:seq 1 8:" configure.in &&

  cd $SOURCE_DIRECTORY &&
  for file in `find . -name \*.patch -type f -exec grep -l '$' {} \;`; do sedit 's/$//' $file; done &&
  cd apache-commons/download &&
  tar -xzpf commons-codec-1.3-src.tar.gz &&
  tar -xzpf commons-logging-1.1.1-src.tar.gz &&
  cd - &&
  for file in `find . -name build.xml -type f -exec grep -l '$' {} \;`; do sedit 's/$//' $file; done &&
  cd apache-commons/download &&
  tar -czf commons-codec-1.3-src.tar.gz commons-codec-1.3 &&
  tar -czf commons-logging-1.1.1-src.tar.gz commons-logging-1.1.1-src &&
  rm -rf commons-codec-1.3 commons-logging-1.1.1-src &&
  cd - &&

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

  OPTS+=" --prefix=$OO_DIR --enable-dbus --disable-dbgutil --disable-static-gtk \
              --disable-fontooo --disable-odk --disable-debug --enable-opengl \
              --disable-mathmldtd --enable-cairo --with-mozilla-version=1.7.5 \
              --enable-mozilla --enable-binfilter --enable-xrender-link       \
              --without-ppds --without-afms --with-system-mozilla=mozilla  \
              --with-system-stdlibs --with-system-zlib --enable-minimizer     \
              --with-system-jpeg --with-system-expat --with-system-freetype   \
              --with-system-libxml --with-system-db --disable-symbols --enable-Xaw \
              --with-system-xrender-headers --with-epm=internal --enable-pdfimport   \
              --with-use-shell=bash --with-x --with-package-format=native     \
              --with-build-version=LunarLinux --enable-presenter-console \
              --enable-wiki-publisher --enable-ogltrans --enable-report-builder \
              --with-system-cairo --with-lang=en --with-dict=ENUS" &&

  if in_depends $MODULE kdepim4 ; then
    . /etc/profile.d/qt4.rc &&
    . /etc/profile.d/kde4.rc &&
    QT4DIR=$QTDIR &&
    QT4INC=$QTDIR/include/qt4 &&
    QT4LIB=$QTDIR/lib/qt4 &&
    KDE4DIR=$KDE4_INSTALL_DIR &&
    export QT4DIR  &&
    export QT4INC  &&
    export QT4LIB  &&
    export KDE4DIR 
  fi &&

  if module_installed sun-jdk ; then
    OPTS+=" --with-jdk-home=$JAVA_HOME";
   else
    if  module_installed j2sdk ; then
    OPTS+=" --with-jdk-home=$JAVA_HOME";
    fi
  fi &&

  # As long as OOo-src does not compile against nss it needs its own mozilla
  # tarball (and it also compiles its own mozilla)
  mkdir -p $SOURCE_DIRECTORY/moz/download &&
  cp $SOURCE_CACHE/$SOURCE2 $SOURCE_DIRECTORY/moz/download/ &&
  autoreconf &&
  default_config &&

  # OOo might fail if those are set to some strange values
  umask 0022 &&
  unset LANG LC_ALL &&

  cd $SOURCE_DIRECTORY &&

  if [ "`arch`" == "x86_64" ] ; then 
      ./bootstrap &&
      sedit "s/-lxml2/-lxml2\ -lexpat/g" LinuxX86-64Env.Set.sh &&
      source LinuxX86-64Env.Set.sh
    else
      ./bootstrap &&
      sedit "s/-lxml2/-lxml2\ -lexpat/g" LinuxX86Env.Set.sh &&
      source LinuxX86Env.Set.sh
  fi &&

  dmake &&

  prepare_install &&

  # make install is not reliable
  # FIXME: How do we detect this directory in an elegant way?
  if [ "`arch`" == "x86_64" ] ; then
     cd instsetoo_native/unxlngx6.pro/OpenOffice/native/install/en-US/linux-2.6-x86_64/buildroot/opt
    else 
     cd instsetoo_native/unxlngi6.pro/OpenOffice/native/install/en-US/linux-2.6-intel/buildroot/opt 
  fi &&

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
