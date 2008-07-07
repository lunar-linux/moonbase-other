(
  unset WITH_PAM &&
  if module_installed Linux-PAM; then
    WITH_PAM="--with-pam --with-pam_smbpass"
  fi  &&

  cd  source
  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --with-piddir=/var/run   \
               --with-smbmount          \
               --with-fhs               \
               --mandir=/usr/share/man  \
               $WITH_PAM                \
               --with-swatdir=/usr/share/samba/swat  \
               $OPTS                   || exit 1

  cp Makefile Makefile.orig    &&
  sedit "s/-msse2//g" Makefile  &&

  mkdir -p /etc/samba /usr/share/samba /var/log/samba    &&

  make -C client mount.cifs umount.cifs &&
  default_make  &&

# These do not seem to be needed anymore. If uncommented vlc, mplayer to name a
# couple cannot find libsmbclient.so.
#  # these symlinks are still needed
#  ln -sf /usr/lib/samba/libsmbclient.so /usr/lib/libsmbclient.so.0  &&
#  ln -sf /usr/lib/samba/libsmbclient.so /usr/lib/libsmbclient.so    &&

  # install cifs mount helpers
  install -m0755 client/{,u}mount.cifs /sbin/ &&

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
