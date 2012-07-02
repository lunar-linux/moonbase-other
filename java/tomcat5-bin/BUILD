(

  TARGET=/usr/share/tomcat5/

  # Cleaning up
  rm -rf bin/*.exe bin/*.bat bin/*.tar.gz bin/jsvc-src &&

  prepare_install &&

  mkdir -p ${TARGET}/skel/ &&
  for i in bin common server shared; do
    cp -r $i ${TARGET}/
  done &&
  for i in conf logs temp work webapps; do
    cp -r $i ${TARGET}/skel/
  done &&
  mkdir -p ${TARGET}/skel/bin &&
  chmod 0644 ${TARGET}/skel/conf/{*.xml,*.policy,*.properties,Catalina/localhost/*.xml} &&
  chmod 755 ${TARGET}/skel/{work,temp,webapps,logs,conf} &&
  install -m0755 ${SCRIPT_DIRECTORY}/tomcat5-install-instance /usr/bin/ &&

  gather_docs LICENSE RUNNING.txt RELEASE-NOTES NOTICE

) > $C_FIFO 2>&1
