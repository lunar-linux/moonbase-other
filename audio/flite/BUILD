(

# Fixes a failed to preserve ownership for the libs it installs. This happens on
# an every other lin and the error is like this;
# cp: failed to preserve ownership for /usr/lib/libflite_cmu_us_kal.so: No such file or directory
  sedit "s:cp -pd:cp -d:g" main/Makefile &&

  # Use best-sounding voice by default - rms.
  # kal sounds horrible - kal16 is obviously better, as a robot sound.
  sedit 's:flite_voice_list = flite_set_voice_list();:flite_voice_list = flite_set_voice_list();\n    desired_voice = flite_voice_select("rms");:' main/flite_main.c  &&

  OPTS+=" --with-audio=alsa --enable-shared" &&

  default_build

) > $C_FIFO 2>&1
