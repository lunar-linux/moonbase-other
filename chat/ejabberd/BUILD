(

  add_priv_user ejabberd:jabber -d /var/lib/ejabberd 
  cd src &&
  sedit "s;EJABBERDDIR = \$(DESTDIR)@prefix@/var/lib/ejabberd;EJABBERDDIR = \$(DESTDIR)@prefix@/usr/lib/ejabberd;g" Makefile.in &&

  if module_installed Linux-PAM; then
    OPTS+=" --enable-pam"
  fi &&
  
  default_build &&
  
  install -d -o ejabberd -g jabber /var/{spool,lib,log}/ejabberd &&
  chmod 750 /var/{spool,lib,log}/ejabberd &&
  chown root:jabber /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberdctl.cfg /etc/ejabberd &&
  chmod 640 /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberdctl.cfg &&

  if [ -f /usr/lib/ejabberd/priv/bin/epam ]; then
    chown root:jabber /usr/lib/ejabberd/priv/bin/epam
    chmod 4750 /usr/lib/ejabberd/priv/bin/epam
  fi

) > $C_FIFO 2>&1
