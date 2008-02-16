(

  echo export PATH=\"'${PATH}':/usr/lib/jdk"${VERSION}"/bin\" >> $SOURCE_DIRECTORY/sun-jdk.rc &&
  chmod +x $SOURCE &&
  echo "yes" | MORE="20000000" ./$SOURCE        &&

  prepare_install  &&

  cp -r $SOURCE_DIRECTORY/jdk${VERSION} /usr/lib/ &&

  # Some applications don't accept anything but /usr/bin
  for file in /usr/lib/jdk${VERSION}/bin/*; do 
      bfile=`basename $file`
      # Conflicting files with heimdal
      if [[ "$bfile" != "klist" ]] && [[ "$bfile" != "kinit" ]]; then
          ln -sf $file /usr/bin/
      fi
  done

  mkdir -p /opt/lunar/plugins &&
  rm -f /opt/lunar/plugins/libjavaplugin_oji.so &&
  ln -sf /usr/lib/jdk${VERSION}/jre/plugin/i386/ns7/libjavaplugin_oji.so \
         /opt/lunar/plugins/ &&

  install -m644 $SOURCE_DIRECTORY/sun-jdk.rc /etc/profile.d/

) > $C_FIFO 2>&1
