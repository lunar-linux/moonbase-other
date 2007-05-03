(
patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  if module_is_expired $MODULE ; then
          set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

   MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
	    
  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZILLA_USE_XFT=1
  export BUILD_OPT=1
  export MAKEOPTS=" -j1 "

  export MOZ_CO_PROJECT=suite
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

 ./configure \
 --prefix=/usr \
 --with-x \
 --with-pthreads \
 --with-default-mozilla-five-home=$MOZILLA_HOME \
 --enable-glitz \
 --with-user-appdir=.seamonkey \
 --with-system-zlib \
 --with-system-png \
 --with-system-jpeg \
 --enable-extensions="default,xmlextras,xforms,webservices,wallet,universalchardet,transformiix,tasks,schema-validation,reporter,cookie,cview,datetime,finger,p3p,permissions,venkman,spellcheck,inspector,irc,-gnomevfs,-auth" \
 --enable-xft \
 --enable-application=suite \
 --enable-reorder \
 --enable-optimize="$OPTS" \
 --enable-crypto \
 --enable-strip	\
 --enable-strip-libs \
 --enable-svg \
 --disable-debug \
 --disable-logging \
 --disable-accessibility \
 --disable-ldap \
 --disable-profilesharing \
 --disable-installer \
 --enable-mathml \
 --enable-canvas \
 --enable-svg-renderer=cairo \
 --enable-system-cairo \
 --disable-gnomevfs \
 --disable-gnomeui \
 --disable-xinerema &&

# for future use
# --enable-default-toolkit=cairo-gtk2  \
default_make &&
  
    install -d /usr/include/seamonkey-$VERSION/nss &&
    cp -Lf dist/private/nss/*.h dist/public/nss/*.h \
	/usr/include/seamonkey-$VERSION/nss &&

     mkdir -p /opt/lunar/plugins		&&

install -d /usr/share/applications /usr/share/pixmaps &&
install -m644 $SCRIPT_DIRECTORY/seamonkey.desktop /usr/share/applications &&
rm -f /usr/share/pixmaps/seamonkey.xpm &&
install -m644 $MOZILLA_HOME/chrome/icons/default/main-window.xpm /usr/share/pixmaps/seamonkey.xpm

) > $C_FIFO 2>&1
