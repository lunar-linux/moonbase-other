(
	prepare_install &&

	# shared scripts

	message "Installing shared modutils/module-init-tools wrapper scripts" &&
	
	for  wrapper in  depmod insmod insmod.static \
	                 lsmod modinfo modprobe rmmod
	do
		install -m 755 shared /sbin/${wrapper} || false
	done &&

    
	# only modutils binaries
	if module_installed modutils ; then
		
		message "Installing modutils only wrapper scripts" && 

		for  wrapper in  genksyms insmod_ksymoops_clean         \
		                 kallsyms kallsyms.static kernelversion \
		                 ksyms ksyms.static lsmod.static        \
		                 modprobe.static rmmod.static 
		do
			install -m 755 modutils /sbin/${wrapper} || false
		done 

	fi &&

    
	# only module-init-tools binaries
	if module_installed module-init-tools ; then
		
		message "Installing module-init-tools only wrapper scripts" &&	

		for  wrapper in  generate-modprobe.conf
		do
			install -m 755 module-init-tools /sbin/${wrapper} || false
		done

	fi &&

    
	install -m0700 $SCRIPT_DIRECTORY/init.d/modutils /etc/init.d  &&
	ln -sf ../init.d/modutils /etc/rcS.d/S20modutils
    
) > $C_FIFO 2>&1
