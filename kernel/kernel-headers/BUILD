(

  cd $SOURCE_DIRECTORY/include/ &&

  # Don't conflict with libdrm
  # As done in http://www.gentoo-portage.com/sys-kernel/linux-headers
  rm -rf drm &&

  # Delete useless files
  find '(' -name '.install' -o -name '*.cmd' ')' -delete &&

  prepare_install &&

  for dir in ./* ; do
     cp    -a $dir      /usr/include/  &&
     chown -R root.root /usr/include/$dir  &&

     for subdir in `find /usr/include/$dir -type d`
     do
        chmod 755 $subdir
     done  &&

     for file in `find /usr/include/$dir -type f`
     do
        chmod 644 $file
     done
  done

) > $C_FIFO 2>&1
