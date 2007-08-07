(

  sedit "s/# tld_conf/tld_conf/" whois.conf         &&
  sedit "s/# timeout/timeout/" whois.conf           &&
  sedit "s/# default_host/default_host/" whois.conf &&
  prepare_install                                   &&
  cp -f whois /usr/bin                              &&
  cp -f whois.1 /usr/share/man/man1                 &&
  mkdir -p /etc/whois                                    &&
  cp -f tld.conf whois.conf sd.conf /etc/whois      &&
  
  if [ ! -d /usr/share/doc/bw-whois ]; then
     mkdir -p /usr/share/doc/bw-whois
  fi                                         &&

  cp -f create_whois.sql whois.html whois.txt COPYRIGHT DISCLAIMER HISTORY INSTALL README /usr/share/doc/bw-whois

) > $C_FIFO 2>&1
