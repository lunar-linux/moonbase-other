(
 
   # Workaround for machines that do not have Python
   # because it would be silly to require python for
   # this little module.
   if ! module_installed Python ; then
     echo "Python is not installed, improvising..."
     sedit 's/^sw.h: gencw.py//' makefile         &&
     sedit 's/python gencw.py > cw.h//' makefile  &&
     cp $SCRIPT_DIRECTORY/cw.h $SOURCE_DIRECTORY/
   fi
   
   make ALL        &&
   prepare_install &&
   
   sedit 's:PREFIX=/usr/local:PREFIX=/usr:' makefile &&
   make install
   
) > $C_FIFO 2>&1
