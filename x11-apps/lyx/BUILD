(

  # -O3 and higher breaks - praise to gentoo
  #export CXXFLAGS="${CXXFLAGS//-O[3..9]/-O2}"
  #export CFLAGS="${CFLAGS//-O[3..9]/-O2}"

  if in_depends lyx qt4; then
    . /etc/profile.d/qt4.rc
  fi
  
  #./autogen.sh  &&
  default_build

) > $C_FIFO 2>&1
