(

  unset CFLAGS CCFLAGS LDFLAGS
  case  $USE_MOUSE  in
     y|Y|j|J) UM="y"  ;;
           *) UM="n"  ;;
  esac

  sedit  "s/TARGET_OS=unix/TARGET_OS=linux/"             makefile  &&
  sedit  "s/TARGET_PLATFORM=i386/TARGET_PLATFORM=i586/"  makefile  &&
  sedit  "s/USE_MOUSE=n/USE_MOUSE=$UM/"                  makefile  &&
  sedit  "s/\/usr\/local/\/usr/"  biewlib/sysdep/generic/unix/os_dep.c  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

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

