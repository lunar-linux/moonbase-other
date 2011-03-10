(

  sedit "s|Fl::awake(0);|Fl::awake((void*)0);|" plug-ins/icc_examin/icc_examin/icc_helfer_fltk.cpp
  sedit "s:ld_x_flags:ldflags:" configure plug-ins/icc_examin/icc_examin/configure.sh 
  sedit "s:oyGetMonitorProfileName:oyGetMonitorProfileNameFromDB:" plug-ins/icc_examin/icc_examin/icc_oyranos.cpp

  if module_installed Python ; then
   OPTS+=" --enable-pygimp --with-python=/usr/bin/python"
  fi &&

  OPTS+=" --enable-gtk2"

  default_build 

) > $C_FIFO 2>&1
