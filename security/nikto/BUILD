(

  EXEC_DIR="/usr/share/nikto"
  CONF_FILE="nikto.conf"

  # uncomment and set the exec directory
  sedit "s:# EXECDIR=/usr/local/nikto:EXECDIR=$EXEC_DIR:" $CONF_FILE &&

  # use nmap if they user has it installed
  if module_installed nmap; then
    sedit 's:NMAP=/usr/local/bin/nmap:NMAP=/usr/bin/nmap:' $CONF_FILE
  fi

  prepare_install &&

  # install the conf file
  install -D -m 0644 $CONF_FILE /etc &&

  # install the app
  install -D -m 0755 nikto.pl /usr/bin/nikto.pl  &&
  ln -sf /usr/bin/nikto.pl /usr/bin/nikto        &&

  # install the plugins, templates, etc
  install -d $EXEC_DIR/{plugins,templates,kbase,docs}  &&
  cp -r plugins/*   $EXEC_DIR/plugins  &&
  cp -r templates/* $EXEC_DIR/templates

) > $C_FIFO 2>&1
