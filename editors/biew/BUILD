(

  HC="$CFLAGS"

  if    [ "$I586"   == "on" ];  then  TP="i586" HC="$HC -DHAVE_MMX"
  elif  [ "$I686"   == "on" ];  then  TP="i686" HC="$HC -DHAVE_MMX2 -DHAVE_SSE"
  elif  [ "$K6"     == "on" ];  then  TP="k6"   HC="$HC -DHAVE_MMX"
  elif  [ "$ATHLON" == "on" ];  then  TP="athlon" HC="$HC -DHAVE_MMX2 -DHAVE_SSE -DHAVE_3DNOWEX"
  fi


  case  $USE_MOUSE  in
     y|Y|j|J) UM="y"  ;;
           *) UM="n"  ;;
  esac


  sedit  "s/TARGET_OS=unix/TARGET_OS=linux/"            makefile  &&
  sedit  "s/TARGET_PLATFORM=i386/TARGET_PLATFORM=$TP/"  makefile  &&
  sedit  "s/HOST_CFLAGS=/HOST_CFLAGS=$HC/"              makefile  &&
  sedit  "s/USE_MOUSE=n/USE_MOUSE=$UM/"                 makefile  &&
  sedit  "s/\/usr\/local/\/usr/"  biewlib/sysdep/generic/unix/os_dep.c  &&


  make                                          &&
  prepare_install                               &&
  gzip       doc/biew.1                         &&
  cp         doc/biew.1.gz     /usr/man/man1    &&
  cp         biew              /usr/bin         &&
  mkdir  -p                    /usr/share/biew  &&
  cp         bin_rc/skn/*.skn  /usr/share/biew  &&
  cp     -R  bin_rc/xlt        /usr/share/biew  &&
  cp         bin_rc/biew.hlp   /usr/share/biew  &&
  cp     -R  hlp/*             /usr/share/biew 


) > $C_FIFO 2>&1  

