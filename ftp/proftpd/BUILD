add_priv_user ftp:ftp -d /var/empty -s /bin/false &&

OPTS+=" --enable-nls \
        --enable-cap \
        --enable-ipv6 \
        --enable-facl \
        --enable-ctrls"

if module_installed systemd; then
  OPTS+=" --localstatedir=/run/proftpd --with-systemd"
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

sedit "s/\tstandalone/\tinetd/" sample-configurations/basic.conf &&
sedit "s:\#DefaultRoot ~:DefaultRoot /srv/ftp:" sample-configurations/basic.conf &&
sedit "s:nobody:ftp:g" sample-configurations/*.conf &&
sedit "s:nogroup:ftp:g" sample-configurations/*.conf &&

default_build &&

mkdir -p /usr/share/doc/proftpd &&
cp -r sample-configurations /usr/share/doc/proftpd &&

mkdir -p /srv/ftp &&
chown ftp:ftp /srv/ftp &&

if module_installed systemd; then
  mkdir -p /run/proftpd
fi
