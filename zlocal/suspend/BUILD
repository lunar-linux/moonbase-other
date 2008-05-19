(

  sedit 's/#CONFIG_COMPRESS=yes/CONFIG_COMPRESS=yes/' Makefile &&
  sedit 's/#CONFIG_ENCRYPT=yes/CONFIG_ENCRYPT=yes/' Makefile &&
  sedit 's/#CONFIG_UDEV=yes/CONFIG_UDEV=yes/' Makefile &&
  sedit 's/\/usr\/local/\/usr/' Makefile &&

  sedit 's/RESUME_DEVICE=<path_to_resume_device_file>/RESUME_DEVICE=\/dev\/hda7/' Makefile &&

  make s2disk &&
  make resume &&

  prepare_install &&

  make install-s2disk &&
  make install-resume-initrd

) > $C_FIFO 2>&1
