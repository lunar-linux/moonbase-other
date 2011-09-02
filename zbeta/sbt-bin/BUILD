(

  cat > sbt << EOF
#!/bin/sh

# source user conf
if test -f ~/.sbtconfig ; then
  . ~/.sbtconfig
fi

exec java                                     \\
       -Xss1M                                 \\
       -Xmx1536M                              \\
       -XX:MaxPermSize=256m                   \\
       -XX:+CMSClassUnloadingEnabled          \\
       -Dsbt.boot.directory=\$HOME/.sbt/boot/ \\
       -jar /opt/sbt/sbt-launch.jar           \\
       "\$@"
EOF

  prepare_install

  install -d /opt/sbt

  install -m644 $SOURCE /opt/sbt/sbt-launch.jar
  install -m755 sbt     /usr/bin/sbt

) > $C_FIFO 2>&1
