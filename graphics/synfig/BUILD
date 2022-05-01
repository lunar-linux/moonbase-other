OPTS+=" -DWITH_MAGICPP=ON -DCMAKE_VERBOSE_MAKEFILE=ON"

# So synfig_modules.cfg dpes not get installed in /usr/
sedit 's:DESTINATION etc:DESTINATION /etc/synfig:' synfig-core/src/modules/CMakeLists.txt &&

default_cmake_build
