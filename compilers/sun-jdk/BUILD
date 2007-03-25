(

  echo export PATH=\"/usr/lib/jdk"${VERSION}"/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/sun-jdk.rc &&
  chmod +x $SOURCE &&
  ./$SOURCE        &&

  prepare_install  &&

  cp -r $SOURCE_DIRECTORY/jdk${VERSION} /usr/lib/ &&

  # Some applications don't accept anything but /usr/bin
  for file in /usr/lib/jdk${VERSION}/bin/*; do ln -sf $file /usr/bin/; done

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/libjavaplugin_oji.so &&
  ln -sf /usr/lib/jdk${VERSION}/jre/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/ &&

  install -m644 $SOURCE_DIRECTORY/sun-jdk.rc /etc/profile.d/

) > $C_FIFO 2>&1
