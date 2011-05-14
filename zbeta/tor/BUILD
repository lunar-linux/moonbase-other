(

  default_build  &&

  # creates 'tor' user if necessary
  if getent passwd | grep "^tor:" > /dev/null ; then
    message "${MESSAGE_COLOR}user 'tor' already exists${DEFAULT_COLOR}"
  else
    useradd --system               \
            --user-group           \
            --home /var/lib/tor    \
            --create-home          \
            tor                   &&
    message "${MESSAGE_COLOR}user 'tor' created${DEFAULT_COLOR}"
  fi  &&

  install -o tor -g tor -d /var/log/tor  &&

  devoke_installwatch  &&

  # reasonable defaults for a basic torrc, if not there yet,
  # for the init.d script to work, properly
  if [[ ! -f /etc/tor/torrc ]] ; then
    echo 'RunAsDaemon 1'                          >> /etc/tor/torrc  &&
    echo 'SocksPort 9050'                         >> /etc/tor/torrc  &&
    echo 'SocksListenAddress 127.0.0.1'           >> /etc/tor/torrc  &&
    echo 'PidFile /var/run/tor.pid'               >> /etc/tor/torrc  &&
    echo 'Log "notice file /var/log/tor/tor.log"' >> /etc/tor/torrc  &&
    echo 'DataDirectory /var/lib/tor'             >> /etc/tor/torrc
  fi

) > $C_FIFO 2>&1
