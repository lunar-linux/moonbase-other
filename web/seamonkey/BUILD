(
 
  #Really? You go and call fprintf and don't #include <cstdio>?
  #How exactly did you plan on doing that?!?!
  sedit 's:<cstdlib>:<cstdlib>\n#include <cstdio>:g' comm-1.9.1/mozilla/toolkit/crashreporter/google-breakpad/src/common/linux/dump_symbols.cc
  sedit 's:<cstdlib>:<cstdlib>\n#include <cstdio>:g' comm-1.9.1/mozilla/toolkit/crashreporter/google-breakpad/src/client/linux/handler/exception_handler.cc
  sedit 's:<cstdlib>:<cstdlib>\n#include <cstdio>:g' comm-1.9.1/mozilla/toolkit/crashreporter/google-breakpad/src/client/linux/handler/minidump_generator.cc

  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi  &&

  # This should always be just a link
  rm -rf /usr/lib/$MODULE-$VERSION/plugins  &&

  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  cp $SCRIPT_DIRECTORY/mozconfig comm-1.9.1/  &&

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"
  mkdir -p ${MOZ_OBJDIR}  &&

  cd comm-1.9.1/mozilla &&
  # Do not conflict with the same plugin from firefox
  sedit 's/nullplugin$/nullpluginSM/' modules/plugin/default/unix/Makefile.in &&
  cd .. &&

  #Add DEPENDS options

  if in_depends $MODULE dbus ; then
    echo "ac_add_options --enable-dbus" >> mozconfig
  else
    echo "ac_add_options --disable-dbus" >> mozconfig
  fi  &&

  if in_depends $MODULE sqlite ; then
    echo "ac_add_options --enable-system-sqlite" >> mozconfig
  fi  &&

  if in_depends $MODULE "xulrunner" ; then
    XUL=`module_version xulrunner`
    echo "ac_add_options --with-libxul-sdk=/usr/lib/xulrunner-devel-$XUL" >> mozconfig
  fi  &&

  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1
    echo "ac_add_options --enable-profile-guided-optimization" >> mozconfig  &&
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig
  fi  &&

  default_build  &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps  &&
  install -m644 $SCRIPT_DIRECTORY/seamonkey.desktop /usr/share/applications  &&
  # please, dont just let the lin fail because /usr/share/pixmaps/seamonkey.png is an existing symlink...
  rm -f /usr/share/pixmaps/seamonkey.xpm  &&
  install -m644 $MOZILLA_HOME/chrome/icons/default/default48.png /usr/share/pixmaps/seamonkey.png  &&

  for icon in `ls /usr/lib/seamonkey-$VERSION/icons`; do
   `ln -sf /usr/lib/seamonkey-$VERSION/icons/$icon \
           /usr/lib/seamonkey-$VERSION/chrome/icons/default/$icon`
  done

) > $C_FIFO 2>&1
