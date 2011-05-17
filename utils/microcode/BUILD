(

   prepare_install &&
   mkdir -p /lib/firmware &&
   install -m644 $MODULE.dat /lib/firmware/ &&
   ln -sf /lib/firmware/$MODULE.dat /etc/microcode.dat

) > $C_FIFO 2>&1
