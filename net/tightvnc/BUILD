(

   xmkmf                          &&
   make World                     &&
   cd Xvnc                        &&
  ./configure  --prefix=/usr       \
               --sysconfdir=/etc  &&

  make                            &&
  cd ..                           &&
  sedit  "s:/usr/local/vnc/classes:/usr/lib/vnc/classes:"  vncserver &&
  sedit  "s.\$fontPath \= \"unix/:7100\";.."               vncserver &&
  sedit  "s:# \$fontPath:\$fontPath:"                      vncserver &&

  prepare_install                        &&
  ./vncinstall /usr/bin /usr/share/man   &&
  mkdir  -p    /usr/lib/vnc/classes      &&
  cp classes/* /usr/lib/vnc/classes

) > $C_FIFO 2>&1
