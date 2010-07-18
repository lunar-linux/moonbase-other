(

  chmod +x $SOURCE &&
  echo "yes" | MORE="20000000" ./$SOURCE &&

  # Clean up old java 1.6.0 service packs
  rm -rf /usr/lib/j[rd][ek]1.6.0_* &&
  rm -rf /usr/java &&
  mkdir -p /usr/java &&

  prepare_install  &&

  # This is default and recommended installation place for Java from Sun
  cp -r $SOURCE_DIRECTORY/jre${FVERSION} /usr/java &&
  # Sun's recommended symlinks:
  # This one _always_ points on latest Java release
  ln -sf /usr/java/jre${FVERSION} /usr/java/latest &&
  # This one _always_ points on default Java.
  # If not set manually by root it defaults to /usr/java/latest:
  if [ ! -h /usr/java/default ]; then
     ln -sf /usr/java/latest /usr/java/default
  fi &&

  # Some apps only search for java in /usr/lib
  ln -sf /usr/java/jre${FVERSION} /usr/lib/jre${FVERSION} &&

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/{libjavaplugin_oji.so,libnpjp2.so} &&

  if [ $NEWPLUGIN == 'y' ]; then
  ln -sf /usr/java/latest/lib/i386/libnpjp2.so \
         /opt/lunar/plugins/
  else
  ln -sf /usr/java/latest/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/
  fi &&

  echo export JAVA_HOME=\"/usr/java/latest\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  echo export PATH=\"'$PATH':'$JAVA_HOME'/bin\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  install -m644 $SOURCE_DIRECTORY/sun-jre.rc /etc/profile.d/

) > $C_FIFO 2>&1
