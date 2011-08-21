(

  chmod +x $SOURCE &&
  ./$SOURCE -noregister &&

  # Clean up old java 1.6.0 service packs
  rm -rf /usr/lib/j[rd][ek]1.6.0_* &&
  rm -rf /usr/java &&
  rm -f /usr/lib/libjvm.so &&

  prepare_install &&

  # Install java to right directory
  mkdir -p /usr/java &&
  # This is default and recommended installation place for Java
  cp -r $SOURCE_DIRECTORY/jdk${FVERSION} /usr/java &&
  # Sun's recommended symlinks:
  # This one _always_ points on latest Java release
  ln -sf /usr/java/jdk${FVERSION} /usr/java/latest &&
  # This one _always_ points on default Java.
  # If not set manually by root it defaults to /usr/java/latest:
  if [ ! -h /usr/java/default ]; then
     ln -sf /usr/java/latest /usr/java/default
  fi  &&

  # Some dumb distros say java is only library so install it in /usr/lib
  # We make symlink to help applications find java if they were developed in such ill environment
  ln -sf /usr/java/jdk${FVERSION} /usr/lib/jdk${FVERSION} &&

  # Some applications don't accept anything but /usr/bin
  for file in /usr/java/latest/bin/*; do
      bfile=`basename $file`
      # Conflicting files with heimdal
      if [[ "$bfile" != "klist" ]] && [[ "$bfile" != "kinit" ]]; then
          ln -sf $file /usr/bin/
      fi
  done &&

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/{libjavaplugin_oji.so,libnpjp2.so} &&

  # Always use new plugin.
  # Firefox 3, Seamonkey 2, Google chrome/inium use it
  # KDE3/4 Konqueror and Opera always uses Java directly so do not use any plugin
  ln -sf /usr/java/latest/jre/lib/i386/libnpjp2.so /opt/lunar/plugins/ &&

  # This didn't get created, dead link. Do it this way.
  ln -sf /usr/java/latest/jre/lib/i386/server/libjvm.so /usr/lib/libjvm.so &&

  echo export JAVA_HOME=\"/usr/java/latest\" >> $SOURCE_DIRECTORY/sun-jdk.rc &&
  echo export PATH=\"'$PATH':'$JAVA_HOME'/bin\" >> $SOURCE_DIRECTORY/sun-jdk.rc &&
  install -m644 $SOURCE_DIRECTORY/sun-jdk.rc /etc/profile.d/

) > $C_FIFO 2>&1
