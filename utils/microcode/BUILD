(

   prepare_install &&
   mkdir -p /etc/firmware &&
   install -m644 $MODULE-$VERSION.dat /etc/firmware/ &&
   ln -sf /etc/firmware/$MODULE-$VERSION.dat /etc/microcode.dat

) > $C_FIFO 2>&1
