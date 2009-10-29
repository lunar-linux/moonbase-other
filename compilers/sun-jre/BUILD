(

  chmod +x $SOURCE &&
  echo "yes" | MORE="20000000" ./$SOURCE &&

  # Clean up old java 1.6.0 service packs
  rm -rf /usr/lib/j[rd][ek]1.6.0_* &&

  prepare_install  &&

  cp -r $SOURCE_DIRECTORY/jre${FVERSION} /usr/lib &&

  # Some apps only search for java in /usr/java
  rm -rf /usr/java &&
  ln -sf /usr/lib/jre${FVERSION} /usr/java &&

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/{libjavaplugin_oji.so,libnpjp2.so} &&

  if [ $NEWPLUGIN == 'y' ]; then
  ln -sf /usr/lib/jre${FVERSION}/lib/i386/libnpjp2.so \
         /opt/lunar/plugins/
  else
  ln -sf /usr/lib/jre${FVERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/
  fi &&

  echo export PATH=\"'${PATH}':/usr/lib/jre"${FVERSION}"/bin\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  echo export JAVA_HOME=\"'${JAVA_HOME}':/usr/lib/jre"${FVERSION}"/\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  install -m644 $SOURCE_DIRECTORY/sun-jre.rc /etc/profile.d/

) > $C_FIFO 2>&1
