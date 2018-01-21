  export CXXFLAGS+=" -fno-lifetime-dse" &&

  # copied the pc from debian, they don't provide it upstream
  cat $SCRIPT_DIRECTORY/tbb.pc.in | sed "s/%VERSION%/${VERSION}/" > tbb.pc &&

  make &&

  prepare_install &&

  # we don't want to install html files in /usr/include
  rm {include,include/tbb}/index.html &&
  cp -rv include/* /usr/include/ &&

  install -Dm0644 tbb.pc /usr/lib/pkgconfig/ &&

  install build/linux_intel*release/*.so* /usr/lib/
