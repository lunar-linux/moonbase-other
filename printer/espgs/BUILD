(

   OPTS="$OPTS --without-omni"  &&

  sedit "s:\$(XCFLAGS):\$(XCFLAGS) \$(ACDEFS):" src/unix-dll.mak  &&

   if ! module_installed gtk+; then
    sedit "s:\$(GSSOC) \$(GSSOX):\$(GSSOC):" src/unix-dll.mak
    sedit "s:\$(INSTALL_PROGRAM) \$(GSSOX) \$(install_prefix)\$(bindir)/\$(GSSOX_XENAME)::" src/unix-dll.mak
   fi  &&

   default_config   &&
   make so          &&
   make             &&
   prepare_install  &&
   make soinstall   &&
   make install

) > $C_FIFO 2>&1
