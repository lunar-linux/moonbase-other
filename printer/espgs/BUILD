(

   OPTS="$OPTS --without-omni" &&
   sedit "s,\$(XCFLAGS),\$(XCFLAGS) \$(ACDEFS)," src/unix-dll.mak &&
   default_config &&
   make so &&
   prepare_install &&
   make soinstall

) > $C_FIFO 2>&1
