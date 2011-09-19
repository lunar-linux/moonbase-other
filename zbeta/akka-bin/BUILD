(

  # we don't need these
  rm -f bin/akka.bat &&
  rm -f doc/akka/samples/akka-sample-camel/bin/start.bat &&
  rm -f doc/akka/samples/akka-sample-security/bin/start.bat &&
  rm -f doc/akka/samples/akka-sample-hello/bin/start.bat &&
  rm -f lib/scala-library.jar &&
  rm -f deploy/akka-sample-hello-1.1.3.jar &&

  sedit 's?boot = \["sample.hello.Boot"\]?boot = \[\]?' config/akka-reference.conf &&
  sedit '/^AKKA_HOME=/d' bin/akka &&
  sedit 's?$AKKA_HOME/lib/scala-library.jar?$SCALA_HOME/lib/*?' bin/akka &&
  chmod 755 bin/akka &&

  # do not install watch the config
  mkdir -p /etc/akka &&
  cp -n config/* /etc/akka &&
  cp config/akka-reference.conf /etc/akka &&
  ln -sf /etc/akka/* config/ &&

  prepare_install &&

  install -d         /opt/akka &&
  cp      -r bin/    /opt/akka &&
  cp      -r config/ /opt/akka &&
  cp      -r deploy/ /opt/akka &&
  cp      -r lib/    /opt/akka &&

  if [ ! "`get_module_config DOCS`" = "n" ] ; then
    cp -r doc/ /opt/akka
  fi

) > $C_FIFO 2>&1
