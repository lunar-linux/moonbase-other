# If expat is yes the make tanks on "line 5975: cd: yes/lib: No such file or directory"
sedit "s:\$withval/:/usr/:g" configure.ac &&

# Yes its a hammer but want to make sure the old polkit stuff is gone,
# especially when this version does not use or have /var.
rm -rf /etc/polkit-1 &&
rm -rf /var/lib/polkit-1 &&
rm -rf /usr/libexec/polkit-agent-helper-1 &&
rm -rf /usr/bin/pkexec &&

autoconf &&

OPTS+=" --disable-static --disable-gtk-doc-html --disable-gtk-doc --disable-gtk-doc-pdf --disable-man-pages" &&

default_build &&

add_priv_user polkitd:polkitd -d / -s /bin/false &&

install -d -o root -g 102 -m 750 /{etc,usr/share}/polkit-1/rules.d &&

#The file /usr/lib/polkit-1/polkit-agent-helper-1 must be owned
#by root and have mode 4755 (setuid root binary)
chmod 4755 /usr/lib/polkit-1/polkit-agent-helper-1 &&

#The file ${exec_prefix}/bin/pkexec must be owned by root and
#have mode 4755 (setuid root binary)
chmod 4755 /usr/bin/pkexec &&

#The directory ${prefix}/etc/polkit-1/rules.d must be owned
#by user 'polkitd' and have mode 700
chown polkitd:polkitd /etc/polkit-1/rules.d &&
chmod 700 /etc/polkit-1/rules.d &&

#The directory ${datarootdir}/polkit-1/rules.d must be owned
#by user 'polkitd' and have mode 700
chown polkitd:polkitd /usr/share/polkit-1/rules.d &&
chmod 700 /usr/share/polkit-1/rules.d &&

if module_installed systemd; then
  sedit "s:--no-debug::" /usr/lib/systemd/system/polkit.service
fi &&

if module_installed Linux-PAM; then
  sedit "4i  account    required     pam_nologin.so" /etc/pam.d/polkit-1
fi
