(

  sedit 's@/usr/local@/usr@' Makefile &&
  sedit 's/NO_STD_COLOR/STD_COLOR/' Makefile &&
  sedit 's@linux/videodev.h@libv4l1-videodev.h@' interface.c lowlevel.c &&
  # Set tuning step to 50kHz for better fine tuning (default USA station spacing is 200kHz, Europe 100kHz)
  sedit 's/GR_TUNER_STEP_LARGE 200/GR_TUNER_STEP_LARGE 50/' gradio.h &&
  default_build

) > $C_FIFO 2>&1
