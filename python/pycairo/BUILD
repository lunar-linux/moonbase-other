(

   if [ -d /usr/lib64 ]; then
     ./waf configure --prefix=/usr --libdir=/usr/lib64
   else
     ./waf configure --prefix=/usr
   fi  &&
   ./waf build      &&
   prepare_install  &&
   ./waf install

) > $C_FIFO 2>&1
