(
   GUI_TEST=$(echo "$OPTS" | grep "\--enable-gui")
   if [ -n "$GUI_TEST" ]; then
     cat $SCRIPT_DIRECTORY/configure.in.patch | patch >/dev/null && echo "sucessful patch!!"
     SED=sed
     libtoolize --force
     aclocal
     automake -i --foreign
     autoconf
   fi
  default_config &&
  sedit 's/SHELL=\"\/bin\/sh\"/SHELL=\"\/bin\/sh\"\nSED=\"\/bin\/sed\"/' $SOURCE_DIRECTORY/libtool &&
  default_make

) > $C_FIFO 2>&1 
