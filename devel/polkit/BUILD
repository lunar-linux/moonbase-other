(

  OPTS+=" --disable-man-pages"  &&

# If expat is yes the make tanks on "line 5975: cd: yes/lib: No such file or directory"
  sedit "s:\$withval/:/usr/:g" configure.ac &&
  libtoolize -c -f --ltdl &&
  autoreconf -i -f &&
  aclocal  &&
  autoreconf &&
  autoconf &&
  automake &&
  default_build  &&

# The following notes are from the ./confiugre summary;
#NOTE: The directory /etc/polkit-1/localauthority must be owned
#      by root and have mode 700
  chmod 700 /etc/polkit-1/localauthority &&

#NOTE: The directory /var/lib/polkit-1 must be owned
#      by root and have mode 700
  chmod 700 /var/lib/polkit-1 &&

#NOTE: The file ${exec_prefix}/libexec/polkit-agent-helper-1 must be owned
#      by root and have mode 4755 (setuid root binary)
  chmod 4755 /usr/libexec/polkit-agent-helper-1 &&

#NOTE: The file ${exec_prefix}/bin/pkexec must be owned by root and
#      have mode 4755 (setuid root binary)
  chmod 4755 /usr/bin/pkexec

) > $C_FIFO 2>&1
