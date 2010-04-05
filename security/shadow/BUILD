(

  set_login_opts() {
    local option=$1 value=$2
    if [[ -z $value ]]; then
      # comment
      sed -r -i "/^#?${option}/s;.*;#&;" etc/login.defs
     else
      # uncomment and set value
      sed -r -i "/^#?${option}/s;.*;${option} ${value};" etc/login.defs
     fi
  }

  # Keep shadow from installing it's own pam.d files
  sedit '/^SUBDIRS/ n; s/etc//' Makefile.in Makefile.am &&

  if  module_installed  Linux-PAM;  then
    OPTS="$OPTS --with-libpam"
  else
    OPTS="$OPTS --without-libpam"
  fi &&

  ./configure --prefix=/ \
              --libdir=/usr/lib \
              --datadir=/usr/share \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man \
              --localedir=/usr/share/locale \
              --with-sha-crypt \
              --with-libcrack \
              --without-selinux \
              --without-skey \
              --without-group-name-max-length \
              $OPTS &&

  make &&
  prepare_install &&
  make suidperms=4711 install &&

  # libshadow.a and libshadow.la should not be installed,
  # they are for internal use only and may break compilation
  # for other modules
  rm -f /usr/lib/libshadow.{a,la} &&

  # We only need these files without PAM
  if ! module_installed Linux-PAM; then
    set_login_opts CRACKLIB_DICTPATH /lib/cracklib/pw_dict
    set_login_opts ENCRYPT_METHOD SHA512
    set_login_opts LOGON_RETRIES 3

    [ -e /etc/limits ] || install -m 0644 etc/limits /etc/
    [ -e /etc/login.access ] || install -m 0644 etc/login.access /etc/
    [ -e /etc/login.defs ] || install -m 0644 etc/login.defs /etc/
  else
    # Disable pam incompatible options
    for lopt in FAILLOG_ENAB LASTLOG_ENAB MAIL_CHECK_ENAB \
                OBSCURE_CHECKS_ENAB PORTTIME_CHECKS_ENAB QUOTAS_ENAB \
                MOTD_FILE FTMP_FILE NOLOGINS_FILE ENV_HZ PASS_MIN_LEN \
                SU_WHEEL_ONLY CRACKLIB_DICTPATH PASS_CHANGE_TRIES \
                PASS_ALWAYS_WARN CHFN_AUTH ENVIRON_FILE; do
      set_login_opts $lopt
    done

    [ -e /etc/login.defs ] || install -m 0644 etc/login.defs /etc/login.defs
  fi &&

  [ -e /etc/securetty  ] || install -m 0644 $SCRIPT_DIRECTORY/securetty /etc/ &&
  ln -sf /sbin/vipw /sbin/vigr &&
  install $SCRIPT_DIRECTORY/adduser /sbin/ &&
  install $SCRIPT_DIRECTORY/deluser /sbin/

) > $C_FIFO 2>&1
