(

  if module_installed texlive ; then
     OPTS="--with-kpathsea=/usr/include/kpathsea/"
    else
     OPTS="--without-kpathsea"
  fi &&

  default_build

) > $C_FIFO 2>&1
