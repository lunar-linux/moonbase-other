(
   GUI_TEST=$(echo "$OPTS" | grep "\--enable-gui")
   if [ -n "$GUI_TEST" ]; then
     cat $SCRIPT_DIRECTORY/configure.in.patch | patch >/dev/null && echo "sucessful patch!!"
     libtoolize --force
     aclocal
     autoconf
     automake -i --foreign
   fi
   
   default_build

) > $C_FIFO 2>&1 
