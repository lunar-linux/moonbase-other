(

  sedit 's/-nonet//' doc/man/Makefile* &&

  add_priv_group polkituser &&
  add_priv_user polkituser:polkituser -d /dev/null -s /bin/true &&

  default_build &&

# Per the configure summary, these files/directories need these permissions
  mkdir -p /var/run/PolicyKit /var/lib/PolicyKit &&
  chown root.polkituser /var/run/PolicyKit /var/lib/PolicyKit &&
  chmod 770 /var/run/PolicyKit /var/lib/PolicyKit &&
  chmod 644 /var/lib/misc/PolicyKit.reload &&
  chmod 4755 /usr/libexec/polkit-set-default-helper &&
  chmod 2755 /usr/libexec/polkit-read-auth-helper &&
  chmod 2755 /usr/libexec/polkit-revoke-helper &&
  chmod 2755 /usr/libexec/polkit-grant-helper &&
  chmod 2755 /usr/libexec/polkit-explicit-grant-helper &&
  chmod 2755 /usr/libexec/polkit-grant-helper-pam &&
  chmod 4755 /usr/libexec/polkit-resolve-exe-helper
  
) > $C_FIFO 2>&1
