(

   OPTS="$OPTS --without-omni" &&
   sedit "s,\$(XCFLAGS),\$(XCFLAGS) \$(ACDEFS)," src/unix-dll.mak &&
   if ! module_installed gtk+; then
       sedit "s,\$(GSSOC) \$(GSSOX),\$(GSSOC)," src/unix-dll.mak
       sedit "s,\$(INSTALL_PROGRAM) \$(GSSOX) \$(bindir)/\$(GSSOX_XENAME),," src/unix-dll.mak
   fi;
   default_config &&
   make so &&
   prepare_install &&
   make soinstall

) > $C_FIFO 2>&1
