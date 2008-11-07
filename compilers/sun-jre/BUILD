(
  chmod +x $SOURCE &&
  ./$SOURCE --accept-license --unpack &&

  prepare_install  &&

  cp -r $SOURCE_DIRECTORY/jre${VERSION} /usr/lib/ &&

  # Some apps only search for java in /usr/java
  rm  -f /usr/java &&
  ln -sf /usr/lib/jre${VERSION} /usr/java &&

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/libjavaplugin_oji.so &&
  rm -f /opt/lunar/plugins/libnpjp2.so &&

  if [ $NEWPLUGIN == 'y' ]; then
  ln -sf /usr/lib/jre${VERSION}/lib/i386/libnpjp2.so \
         /opt/lunar/plugins/
  else
  ln -sf /usr/lib/jre${VERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/
  fi &&

  echo export PATH=\"'${PATH}':/usr/lib/jre"${VERSION}"/bin\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  echo export JAVA_HOME=\"'${JAVA_HOME}':/usr/lib/jre"${VERSION}"/\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  install -m644 $SOURCE_DIRECTORY/sun-jre.rc /etc/profile.d/

) > $C_FIFO 2>&1
