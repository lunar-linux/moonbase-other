(

# So lunar fix does not bark about not finding some of octave's so files.
  if in_depends $MODULE octave ; then
    OPTS+=" --with-octave-dir=/usr/lib/octave/`lvu version octave` \
            --with-octave-m-dir=/usr/share/octave/`lvu version octave`"
  fi &&

# A gcc-4.x.x twiddle here.
  sedit 's:tion(const char \*name):tion(char \*name):' src/filter/pfspanoramic.cpp &&

  default_build

) > $C_FIFO 2>&1
