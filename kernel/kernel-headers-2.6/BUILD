(

  cd $SOURCE_DIRECTORY/include/ &&

  prepare_install &&

  for dir in ./* ; do
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
