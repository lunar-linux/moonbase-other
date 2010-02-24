(
  unset WITH_PAM &&
  if module_installed Linux-PAM; then
    WITH_PAM="--with-pam --with-pam_smbpass"
  fi  &&

  cd  source3
  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --with-piddir=/var/run   \
               --with-fhs               \
               --mandir=/usr/share/man  \
               $WITH_PAM                \
               --with-swatdir=/usr/share/samba/swat  \
               $OPTS                   || exit 1

  mkdir -p /etc/samba /usr/share/samba /var/log/samba  &&

  default_make  &&

# These do not seem to be needed anymore. If uncommented vlc, mplayer to name a
# couple cannot find libsmbclient.so.
#  # these symlinks are still needed
#  ln -sf /usr/lib/samba/libsmbclient.so /usr/lib/libsmbclient.so.0  &&
#  ln -sf /usr/lib/samba/libsmbclient.so /usr/lib/libsmbclient.so    &&

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
