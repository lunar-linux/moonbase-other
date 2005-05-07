(
   patch_it $SOURCE_CACHE/$SOURCE2 1 &&
   default_build                     &&
   ln -sf /usr/include/$MODULE /usr/include/$MODULE-$VERSION &&
   mkdir -p /etc/howl                &&
   cp $SCRIPT_DIRECTORY/mDNSResponder.conf /etc/howl 
) > $C_FIFO 2>&1
