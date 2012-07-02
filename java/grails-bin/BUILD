(

  # Remove some crap before installing
  rm -f bin/*.bat src/resources/bash/startGrails/startGrails.bat &&
  prepare_install &&
  mkdir -p /opt/lunar/grails &&

  cp -R bin build.gradle *.properties gradlew conf dist lib media plugins scripts src /opt/lunar/grails/ &&
  chmod +x /opt/lunar/grails/bin/* &&

  gather_docs samples

) > $C_FIFO 2>&1
