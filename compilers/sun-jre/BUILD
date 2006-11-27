(

  chmod +x $SOURCE &&
  ./$SOURCE        &&

  prepare_install  &&

  cp -a $SOURCE_DIRECTORY/jre${VERSION} /usr/lib/ &&

  if [ ! -d /opt/lunar/plugins ] ; then
    mkdir -p /opt/lunar/plugins;
    ln -sf /usr/lib/jre${VERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
           /opt/lunar/plugins/;
  elif [ ! -x /opt/lunar/plugins/libjavaplugin_oji.so ] ; then
    ln -sf /usr/lib/jre${VERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
           /opt/lunar/plugins/;
  else
    rm -f /opt/lunar/plugins/libjavaplugin_oji.so;
    ln -sf /usr/lib/jre${VERSION}/plugin/i386/ns7/libjavaplugin_oji.so \
           /opt/lunar/plugins/;
  fi &&

  echo export PATH=\"/usr/lib/jre"${VERSION}"/bin:'${PATH}'\" >> $SOURCE_DIRECTORY/sun-jre.rc &&

  install -m644 $SOURCE_DIRECTORY/sun-jre.rc /etc/profile.d/

) > $C_FIFO 2>&1
