(

  #GCC >= 4.3 requires the c prefix
  sedit 's:<string>:<cstring>:g' source/example/SoundStretch/WavFile.cpp

  ./bootstrap &&
  default_build

) > $C_FIFO 2>&1
