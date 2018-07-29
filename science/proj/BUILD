
#  if in_depends $MODULE apache-ant; then
#     CFLAGS+=" -I/usr/lib/java/latest/include/linux" &&
#     OPTS+=" --with-jni=/usr/lib/java/latest/include" &&
#     sedit "s/#include \"org_proj4_.*\"/#include \"org_proj4_Projections.h\"/" src/jniproj.c &&
#     default_build &&
#     devoke_installwatch &&
#     cd jniwrap &&
#     ant &&
#     cd ../ &&
#     prepare_install &&
#     install -m0755 jniwrap/libs/jproj.jar /usr/lib/ 
#  else
     default_build
#  fi 
