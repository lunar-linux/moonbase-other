(
    cd /usr/include/
    
    for dir in asm linux scsi
    do
	test -e $dir 2> /dev/null && rm -rf $dir  
    done
    
    cd ${SOURCE_DIRECTORY}/include/
    
    # asm is a special case, since it is arch specific
    mv asm-i386 asm
    
    for dir in asm linux scsi  
    do
    
	cp    -a $dir      /usr/include/
	chown -R root.root /usr/include/$dir
	
	for subdir in `find /usr/include/$dir -type d`
	do
	    chmod 755 $subdir
	done

	for file in `find /usr/include/$dir -type f`
	do
	    chmod 644 $file
	done
	
    done

) > $C_FIFO 2>&1
