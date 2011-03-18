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

  # applies defaults to configure
  # TODO: conf server and manager
  ./configure --build=$BUILD                   \
              --prefix=/usr                    \
              --bindir=/usr/bin                \
              --infodir=/usr/share/info        \
              --mandir=/usr/share/man          \
              --enable-shared                  \
              --disable-static                 \
              --enable-libraries               \
              --enable-client                  \
              --enable-dynamic-client-linkage  \
              --disable-manager                \
              --disable-server                 \
              $OPTS                           &&

  default_make  &&

  # creates 'boinc' user if necessary
  if grep "^boinc:" /etc/passwd > /dev/null; then
    echo "user 'boinc' already exists"
  else
    useradd --system              \
            --user-group          \
            --create-home         \
            --home /var/lib/boinc \
            boinc
  fi

) > $C_FIFO 2>&1
