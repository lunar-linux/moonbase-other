
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  sedit "s:ELSEIF ( ZLIB:ELSE ( ZLIB:" src/shared/CMakeLists.txt &&
  sedit "s:refcount--;:refcount--;\nindexTerms[i].__cl_decref();:" src/core/CLucene/index/TermInfosReader.cpp &&

  . /etc/profile.d/qt4.rc   &&
  . /etc/profile.d/kde4.rc  &&

  OPTS+=" -DBUILD_CONTRIBS_LIB=1" &&

  default_cmake_build
