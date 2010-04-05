(

  # global options for sendmail:
  echo "define(\`confGBINGRP', \`mail')" >> devtools/Site/site.config.m4  &&
  echo "define(\`confMSPQOWN', \`mail')" >> devtools/Site/site.config.m4  &&
  echo "define(\`confTRUSTED_USER', \`mail')" >> devtools/Site/site.config.m4  &&
  echo "define(\`confRUN_AS_USER', \`mail:mail')"  >> devtools/Site/site.config.m4  &&
  echo "define(\`confMANROOT', \`/usr/share/man/man')" >> devtools/Site/site.config.m4  &&

  if [ "$MILTER" == "y" ] ; then
    echo "APPENDDEF(\`conf_sendmail_ENVDEF', \`-DMILTER')" >> devtools/Site/site.config.m4
  fi  &&

  # global stuff for submit.mc:
  echo "define(\`confTRUSTED_USER', \`mail')" >> cf/cf/submit.mc  &&
  echo "define(\`confRUN_AS_USER', \`mail:mail')" >> cf/cf/submit.mc  &&

  # users to be created:
  add_priv_user mail:mail  &&

  prepare_install  &&

  # pick a default sendmail.mc
  cd cf/cf  &&
  cp generic-linux.cf sendmail.cf  &&
  cp generic-linux.mc sendmail.mc  &&
  sh Build  &&
  make install-cf  &&

  cd ../../libmilter  &&
  sh Build  &&
  cd ..  &&

  sh Build install

  # directories and files:
  mkdir -p /etc/mail  &&
  mkdir -p /var/spool/mail  &&
  mkdir -p /var/spool/mqueue  &&
  mkdir -p /var/spool/clientmqueue  &&

  # permissions, permissions, permissions!
  (
    chown -R root:mail /etc/mail  &&
    chown mail:mail /var/spool/mail  &&
    chown root:mail /var/spool/mqueue  &&
    chown mail:mail /var/spool/clientmqueue  ||
    message "${PROBLEM_COLOR}Warning${DEFAULT_COLOR}${MESSAGE_COLOR}: setting ownerships failed!${DEFAULT_COLOR}"
  ) &&

  (
    chmod 0750 /etc/mail  &&
    chmod 1777 /var/spool/mail  &&
    chmod 0750 /var/spool/mqueue  &&
    chmod 0770 /var/spool/clientmqueue  ||
  message "${PROBLEM_COLOR}Warning${DEFAULT_COLOR}${MESSAGE_COLOR}: setting permissions failed!${DEFAULT_COLOR}"
  ) && 

  # copy the m4 stuff over:
  mkdir -p /usr/share/sendmail  &&
  cp -a cf/* /usr/share/sendmail

  # include this nifty configuration help thingamasomething:
  install -m 644 -o root -g root $SCRIPT_DIRECTORY/Makefile /etc/mail

) > $C_FIFO 2>&1
