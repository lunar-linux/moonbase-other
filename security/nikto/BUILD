(

  EXEC_DIR="/usr/share/nikto"
  CONF_FILE="nikto.conf"

  #We want a /etc/nikto.conf file not a ./config.txt file
  sedit "s:config.txt:$CONF_FILE:" nikto.pl  &&
  sedit "s:\$NIKTO{configfile} = \"$CONF_FILE\":\$NIKTO{configfile} = \"/etc/$CONF_FILE\":" nikto.pl &&
  mv config.txt $CONF_FILE  &&

  # uncomment and set the exec directory
  sedit "s:# EXECDIR=/usr/local/nikto:EXECDIR=$EXEC_DIR:" $CONF_FILE &&

  # use nmap if they user has it installed
  if module_installed nmap; then
    sedit 's:NMAP=/usr/local/bin/nmap:NMAP=/usr/bin/nmap:' $CONF_FILE
  fi

  prepare_install &&

  # install the conf file
  install -m 0600 $CONF_FILE /etc &&

  # install the app
  install -D -m 0700 nikto.pl /usr/bin/nikto.pl  &&
  ln -sf /usr/bin/nikto.pl /usr/bin/nikto        &&

  # install the plugins, templates, etc
  mkdir -p -m 0700 $EXEC_DIR/{plugins,templates,kbase,docs}  &&
  cd plugins                   &&
  cp * $EXEC_DIR/plugins       &&
  cd ..                        &&
  cd templates                 &&
  cp * $EXEC_DIR/templates

) > $C_FIFO 2>&1
