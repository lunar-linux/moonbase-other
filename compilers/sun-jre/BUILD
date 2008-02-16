(

  echo export PATH=\"'${PATH}':/usr/lib/jre"${VERSION}"/bin\" >> $SOURCE_DIRECTORY/sun-jre.rc &&
  chmod +x $SOURCE &&
  echo "yes" | MORE="20000000" ./$SOURCE        &&

  prepare_install  &&

  cp -r $SOURCE_DIRECTORY/jre${VERSION} /usr/lib/ &&

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/libjavaplugin_oji.so &&
  ln -sf /usr/lib/jre${VERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/ &&

  install -m644 $SOURCE_DIRECTORY/sun-jre.rc /etc/profile.d/

) > $C_FIFO 2>&1
