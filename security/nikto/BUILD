(

  PLUGIN_DIR="$MODULE_PREFIX/share/nikto/plugins"
  CONF_FILE="nikto.conf"
  
  #We want a /etc/nikto.conf file not a ./config.txt file
  sedit "s:config.txt:$CONF_FILE:" nikto.pl                                                  &&
  sedit "s:\$CFG{configfile}=\"$CONF_FILE\":\$CFG{configfile}=\"/etc/$CONF_FILE\":" nikto.pl &&
  mv config.txt $CONF_FILE                                                                   &&
  
  # uncomment and set the plugin directory
  sedit "s:# PLUGINDIR=/usr/local/nikto/plugins:PLUGINDIR=$PLUGIN_DIR:" $CONF_FILE &&

  # use nmap if they user has it installed
  if module_installed nmap; then
    sedit 's:^#NMAP:NMAP:' $CONF_FILE
  fi
 
  # install the conf file
  install -m 0600 $CONF_FILE /etc &&

  # install the app
  install -D -m 0700 nikto.pl $MODULE_PREFIX/bin/nikto.pl     &&
  ln -sf $MODULE_PREFIX/bin/nikto.pl $MODULE_PREFIX/bin/nikto &&

  # install the plugins
  mkdir -p -m 0700 $PLUGIN_DIR &&
  cd plugins                   &&
  cp * $PLUGIN_DIR

) > $C_FIFO 2>&1
