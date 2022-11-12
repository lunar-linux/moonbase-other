cp $SCRIPT_DIRECTORY/CMakeLists.txt $SOURCE_DIRECTORY

# Create some jni files
cd java &&
mkdir -p target/swig/ome/jxrlib &&
swig -java -c++ -package ome.jxrlib -outdir target/swig/ome/jxrlib -o target/swig/JXR_wrap.cxx JXR.i &&

mkdir -p ../build &&
cd ../build &&

cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release &&
make &&

cd ../java &&
mvn install -DskipTests &&
prepare_install &&
cd ../build &&
make install
