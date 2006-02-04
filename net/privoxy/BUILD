(

  add_priv_user privoxy:privoxy  &&

  autoheader       && 
  autoconf         &&
  default_config   &&
  make             &&
  prepare_install  &&

  strip privoxy   && (
   install -c -m 0750 -g privoxy -o privoxy -d /etc/privoxy
   install -c -m 0750 -g privoxy -o privoxy -d /etc/privoxy/templates
   install -c -m 0750 -g privoxy -o privoxy -d /usr/sbin
   install -c -m 0750 -g privoxy -o privoxy -b privoxy /usr/sbin
   install -c -m 0640 -g privoxy -o privoxy -b templates/[a-z]* /etc/privoxy/templates
   install -c -m 0640 -g privoxy -o privoxy -b config default.action default.filter trust /etc/privoxy
   gzip -c privoxy.1 > /usr/share/man/privoxy.1.gz
  )

) > $C_FIFO 2>&1
