(

mkdir -p /{etc/init.d,usr/{sbin,share/man/man8,share/doc/$MODULE-$VERSION,share/doc/$MODULE-$VERSION/contrib}}           &&
prepare_install                                                                        &&
cp pop-before-smtp    /usr/sbin                                                        &&
pod2man pop-before-smtp >/usr/share/man/man8/pop-before-smtp.8 2>/dev/null             &&
perl -i -e 'undef $/; $_ = <>; s/\n=head1.*\n=cut//s; print' /usr/sbin/pop-before-smtp &&
cp pop-before-smtp-conf.pl /etc                                                        &&
cp pop-before-smtp.init /etc/init.d/pop-before-smtp                                    &&
chmod 0755 /etc/init.d/pop-before-smtp /usr/sbin/pop-before-smtp                       &&
chmod 0644 /etc/pop-before-smtp-conf.pl                                                &&
cp README TODO ChangeLog pop-before-smtp-conf.pl /usr/share/doc/$MODULE-$VERSION       &&
cp contrib/README* contrib/getfromcpan contrib/perlmod2rpm /usr/share/doc/$MODULE-$VERSION/contrib

) > $C_FIFO 2>&1
