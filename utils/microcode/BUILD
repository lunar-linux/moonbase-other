(

   prepare_install &&
   mkdir -p /lib/firmware &&
   install -m644 $MODULE-$VERSION.dat /lib/firmware/ &&
   ln -sf /lib/firmware/$MODULE-$VERSION.dat /etc/microcode.dat

) > $C_FIFO 2>&1
