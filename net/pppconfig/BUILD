(
	test -e /etc/chatscripts || ln -s /etc/ppp/chat /etc/chatscripts
	cp pppconfig     /usr/sbin/           &&  chown root.root /usr/sbin/pppconfig
	cp 0dns-up       /etc/ppp/ip-up.d/    &&  chown root.root /etc/ppp/ip-up.d/0dns-up
	cp 0dns-down     /etc/ppp/ip-down.d/  &&  chown root.root /etc/ppp/ip-down.d/0dns-down	
	cp pppconfig.8   /usr/share/man/man8  &&  chown root.root /usr/share/man/man8/pppconfig.8
) > $C_FIFO 2>&1
