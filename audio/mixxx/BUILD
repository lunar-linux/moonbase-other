(
  cd src &&

  sedit 's:sfftw:fftw:g' enginespectralback.h enginespectralfwd.h mixxx.pro &&
  sedit 's:srfftw:rfftw:g' enginespectralback.h enginespectralfwd.h mixxx.pro &&

  ./configure  $OPTS  &&

  default_make
 
) > $C_FIFO 2>&1
