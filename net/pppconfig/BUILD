(
	# ppp creates /etc/ppp but we need a couple of dirs more

	for dir in /etc/ppp/ip-down.d/ /etc/ppp/ip-up.d/ /etc/ppp/resolv/    
	do
		test -e $dir || mkdir $dir 
	done

	# pppconfig searches in /etc/chatscripts instead of /etc/chat, so we just link it
	test -e /etc/chatscripts || ln -s /etc/ppp/chat /etc/chatscripts

	cp pppconfig     /usr/sbin/           &&  chown root.root /usr/sbin/pppconfig
	cp 0dns-up       /etc/ppp/ip-up.d/    &&  chown root.root /etc/ppp/ip-up.d/0dns-up
	cp 0dns-down     /etc/ppp/ip-down.d/  &&  chown root.root /etc/ppp/ip-down.d/0dns-down	
	cp pppconfig.8   /usr/share/man/man8  &&  chown root.root /usr/share/man/man8/pppconfig.8
) > $C_FIFO 2>&1
