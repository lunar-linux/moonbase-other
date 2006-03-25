(

	perl -i -e 'undef $/; $_ = <>; s/\n=head1.*\n=cut//s; print' pop-before-smtp &&
	pod2man pop-before-smtp > /usr/share/man/man8/pop-before-smtp.8 2>/dev/null &&

	prepare_install &&
  
  	mkdir -p /usr/share/man/man8/ &&
	install -m0755 pop-before-smtp /usr/sbin/ &&
	install -m0755 pop-before-smtp.init /etc/init.d/pop-before-smtp &&
	install -m0644 pop-before-smtp.8 /usr/share/man/man8/ &&
  
	if [ ! -e /etc/pop-before-smtp-conf.pl ]; then
  		install -m0644 pop-before-smtp-conf.pl /etc/                                                        &&
	fi &&
	gather_docs contrib/README* contrib/getfromcpan contrib/perlmod2rpm

) > $C_FIFO 2>&1
