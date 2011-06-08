(

  source /etc/profile.d/qt4.rc &&

  sedit "s:/opt/local:$QTDIR:g" cmake/modules/FindLibLastFm.cmake &&

  default_cmake_build

) > $C_FIFO 2>&1
