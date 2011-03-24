(

  # creates configure script
  ./_autosetup                             &&

  # overwrite init-script with our own modified one
  cp $SCRIPT_DIRECTORY/init.d/boinc-client client/scripts/boinc-client.in &&

  # run per default as daemon
  sedit 's/#BOINCOPTS="--daemon"/BOINCOPTS="--daemon"/' client/scripts/boinc-client.conf &&

  # get the alias
  SSL=`unalias %SSL` &&

  # setting the ssl option
  if [[ $SSL == "openssl" ]] && module_installed "openssl" ; then
        OPTS+=" --with-ssl --without-libgnutls"
  elif [[ $SSL == "gnutls" ]] && module_installed "gnutls" ; then
        OPTS+=" --with-libgnutls --without-ssl"
  else
        OPTS+=" --without-ssl --without-libgnutls"
  fi &&

  # TODO: move enable/disable client/server/manager to CONFIGURE
  OPTS+=" --enable-shared --disable-static --enable-libraries --enable-client --enable-dynamic-client-linkage --disable-manager --disable-server" &&

  default_build  &&

  # creates 'boinc' user if necessary
  if grep "^boinc:" /etc/passwd > /dev/null; then
    message "${MESSAGE_COLOR}user 'boinc' already exists${DEFAULT_COLOR}"
  else
    useradd --system               \
            --user-group           \
            --create-home          \
            --home /var/lib/boinc  \
            boinc                 &&
    message "${MESSAGE_COLOR}user 'boinc' created${DEFAULT_COLOR}"
  fi  &&

  # install bash completion
  install -m755 client/scripts/boinc.bash /etc/bash_completion.d/boinc-bash-completion.sh

) > $C_FIFO 2>&1
