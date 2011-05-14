(

  echo  "java -Xmx512M -jar /opt/sbt/sbt-launch.jar \"\$@\""  >  sbt  &&

  prepare_install  &&

  install -d  /opt/sbt  &&

  install  -m644  $SOURCE  /opt/sbt/sbt-launch.jar  &&
  install  -m755  sbt      /usr/bin/sbt

) > $C_FIFO 2>&1
