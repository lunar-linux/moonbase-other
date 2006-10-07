(
  cd ${SOURCE_DIRECTORY}/include/ &&
    
  # asm is a special case, since it is arch specific
  mv asm-i386 asm &&
    
  prepare_install &&

  for dir in asm linux scsi sound mtd
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
  done &&

  # XOrg X11R7 will not build without this
  # Incase of an update: Remove this!
  sed -e 's|__u16|unsigned short|g' -e 's|__u32|unsigned|g' \
	-i /usr/include/linux/agpgart.h

) > $C_FIFO 2>&1
