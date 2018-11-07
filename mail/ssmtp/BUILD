OPTS+=" --exec-prefix=/usr \
        --mandir=/usr/share/man \
        --enable-inet6 \
        --enable-md5auth"

OPTS+=" --sbindir=/usr/bin"

autoconf &&

printf '\n\n' | default_build &&

#install -D -m644 ssmtp.conf.5 "/usr/share/man/man5/ssmtp.conf.5 &&

# might already be provided by another module
if [[ ! -e /usr/bin/mailq ]]; then
  ln -sf /usr/bin/ssmtp /usr/bin/mailq &&
  ln -sf /usr/bin/ssmtp /usr/bin/sendmail &&
  ln -sf /usr/bin/ssmtp /usr/bin/newaliases
fi
