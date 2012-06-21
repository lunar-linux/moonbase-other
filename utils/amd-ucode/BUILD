(

   rm -f microcode_amd_solaris.bin* &&
   prepare_install &&
   mkdir -p /usr/lib/firmware/amd-ucode &&
   install -m644 microcode_amd*.bin /usr/lib/firmware/amd-ucode/

) > $C_FIFO 2>&1
