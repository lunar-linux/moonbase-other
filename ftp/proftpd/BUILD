(
  PROFTPD_MODULES="mod_ifsession mod_ldap mod_radius mod_ratio mod_readme mod_rewrite mod_sql mod_sql_mysql mod_sql_postgres mod_tls mod_wrap"
  MODS=""

  for mod in $PROFTPD_MODULES; do
    if [ $(eval echo \$MOD_$mod) = "y" ]; then
      MODS="$MODS:$mod"
    fi
  done
  MODS=`echo $MODS|sed -re 's%^:%%'`

  if [ -n "$MODS" ]; then
    OPTS="$OPTS --with-modules=$MODS"
  fi

  if  module_installed  Linux-PAM;  then
    OPTS=$OPTS" --enable-shadow $ENABLE_PAM"
  fi

  sedit  "s/	standalone/	inetd/" sample-configurations/basic.conf  &&
  cp  -r  sample-configurations  doc

  default_build

) > $C_FIFO 2>&1
