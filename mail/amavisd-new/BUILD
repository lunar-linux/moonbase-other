(
   cp amavisd /usr/sbin/amavisd &&
   chown 755 /usr/sbin/amavisd &&

   if [ `grep amavis /etc/passwd | wc -l` -eq 0 ]; then
       groupadd amavis &&
       useradd -d /var/amavis -s /bin/true -g amavis amavis
   fi &&

   if [ ! -e /var/amavis ]; then
       mkdir /var/amavis &&
       chown amavis:amavis /var/amavis &&
       chmod 750 /var/amavis
   fi
) > $C_FIFO
