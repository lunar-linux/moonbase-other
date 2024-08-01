#Git rid of pandoc need
sedit 's:NOT::' src/CMakeLists.txt &&
touch src/gpshell.1 &&

cmake . -DCMAKE_INSTALL_PREFIX=/usr &&

default_make
