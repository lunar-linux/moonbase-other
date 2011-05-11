(

  export PREFIX=/usr &&

  # this will save us from a lot of annoying warnings
  # (actually should have been cared of by cdrkit-devs)
  for file in `find -type f -name CMakeLists.txt` ; do
    echo "cmake_minimum_required(VERSION 2.8)" >> $file
    echo "cmake_policy(SET CMP0015 NEW)" >> $file
  done &&

  default_make

) > $C_FIFO 2>&1
