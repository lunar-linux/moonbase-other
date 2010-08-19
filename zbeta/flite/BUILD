(

  # Use best-sounding voice by default - rms.
  # kal sounds horrible - kal16 is obviously better, as a robot sound.
  sedit 's:flite_voice_list = flite_set_voice_list();:flite_voice_list = flite_set_voice_list();\n    desired_voice = flite_voice_select("rms");:' main/flite_main.c  &&

  # Output to ALSA rather than OSS
  OPTS+=" --with-audio=alsa --enable-shared"  &&

  default_build

) > $C_FIFO 2>&1
