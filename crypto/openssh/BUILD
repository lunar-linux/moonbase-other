(

if ! [ -d /var/empty ]; then
     mkdir -p /var/empty
     chown root:sys /var/empty
     chmod 755 /var/empty
fi                                                                     &&

if ! $(id sshd &> /dev/null) ; then
     groupadd sshd &> /dev/null || true
     useradd -g sshd sshd
fi                                                                     &&

#yes, there is a sshd here, but starting sshd standalone is depreceated
#it is not possible to upgrade openssh via remote if sshd was started
#not from xinetd, kongar, 20020516
#
OPTS=$OPTS" --sysconfdir=/etc/ssh --with-md5-passwords"                &&
default_build 

) > $C_FIFO 2>&1
