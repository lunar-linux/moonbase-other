(

  if module_installed systemd; then
    OPTS+=" --localstatedir=/run/proftpd"
  fi

  PROFTPD_MODULES="mod_ifsession mod_ldap mod_radius mod_ratio mod_readme mod_rewrite mod_tls mod_wrap"
  MODS=""

  for mod in $PROFTPD_MODULES; do
    if [ $(eval echo \$MOD_$mod) = "y" ]; then
      MODS="$MODS:$mod"
    fi
  done

  # ProFTPD only support one backend at a time
  # We default to MySQL if both are enabled
  if in_depends $MODULE mysql; then
    MODS="$MODS:mod_sql:mod_sql_mysql"
    OPTS+=" --with-includes=/usr/include/mysql"
  else
    if in_depends $MODULE postgresql; then
      MODS="$MODS:mod_sql:mod_sql_postgres"
      OPTS+=" --with-includes=/usr/include/postgresql"
    fi
  fi

  MODS=`echo $MODS|sed -re 's%^:%%'`

  if [ -n "$MODS" ]; then
    OPTS+=" --with-modules=$MODS"
  fi

  if  module_installed  Linux-PAM;  then
    OPTS+=" --enable-shadow $ENABLE_PAM"
  fi

  sedit  "s/\tstandalone/\tinetd/" sample-configurations/basic.conf
  cp  -r  sample-configurations  doc

  default_build

  if module_installed systemd; then
    mkdir -p /run/proftpd
  fi

) > $C_FIFO 2>&1
