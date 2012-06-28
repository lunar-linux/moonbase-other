(

  # Samba build will break if talloc is installed
  if module_installed talloc; then
    lrm talloc
    export TALLOC=installed
  fi &&

  cd  source3 &&

  LDFLAGS+=" -Wl,--no-as-needed" &&

 ./configure  --prefix=/usr             \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --with-piddir=/var/run   \
               --mandir=/usr/share/man  \
               $OPTS                    &&

  mkdir -p /etc/samba /usr/share/samba /var/log/samba  &&

  default_make  &&

  if module_installed cups ; then
    ln -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
  fi &&

  mkdir -p $DOCUMENT_DIRECTORY/samba &&
  cp -p $SOURCE_DIRECTORY/WHATSNEW.txt $DOCUMENT_DIRECTORY/samba

) > $C_FIFO 2>&1  &&  (

  if [ -d /usr/private ]; then
    rmdir /usr/private
    true
  fi

)
