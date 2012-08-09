(

  add_priv_user ejabberd:jabber -d /var/lib/ejabberd

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  if module_installed Linux-PAM; then
    OPTS+=" --enable-pam"
  fi &&

  cd src &&
  default_build &&

  install -d -m 0770 -o ejabberd -g jabber /var/{lib,log}/ejabberd &&
  if [ -d /var/spool/ejabberd ]; then
    devoke_installwatch
    cp -a /var/spool/ejabberd/* /var/lib/ejabberd/
    mv /var/spool/ejabberd{,.old-$$}
    invoke_installwatch
  fi &&
  chown root:jabber /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberdctl.cfg /etc/ejabberd &&
  chmod 640 /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberdctl.cfg &&
  install -d -m 0750 -o ejabberd -g jabber /var/lock/ejabberdctl &&

  if [ -f /usr/lib/ejabberd/priv/bin/epam ]; then
    chown root:jabber /usr/lib/ejabberd/priv/bin/epam
    chmod 4750 /usr/lib/ejabberd/priv/bin/epam
  fi

) > $C_FIFO 2>&1
