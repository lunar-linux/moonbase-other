(

  # -O3 and higher breaks - praise to gentoo
  export CXXFLAGS="${CXXFLAGS//-O[3..9]/-O2}"
  export CFLAGS="${CFLAGS//-O[3..9]/-O2}"
  
  ./autogen.sh  &&
  default_build

) > $C_FIFO 2>&1
