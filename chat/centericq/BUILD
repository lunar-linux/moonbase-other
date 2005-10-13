(

  # configure scripts are a bit messed up in ver 4.21.0, at least
  # within the Lunar env.  Running ./configure on the cmdline works
  # just fine, grrrrr
  dirs_to_fix="connwrap kkconsui kkstrtext kksystr libicq2000  \
               libjabber libmsn libyahoo2"
  for d in $dirs_to_fix ; do
    cd $d-0.1/                  &&
    WANT_AUTOCONF=2.5 autoconf  &&
    cd ..
  done  &&

  default_build

) > $C_FIFO 2>&1
