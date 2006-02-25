(
   # get python version
   PYTHON_VERSION="`installed_version Python`"

   bjam         $OPTS                             \
     		-sBOOST_ROOT=$SOURCE_DIRECTORY    \
		-sPYTHON_ROOT=/usr                \
		-sPYTHON_VERSION=$PYTHON_VERSION &&

   prepare_install  &&
   
   # install libs
   find bin/boost/libs -type f -name "*.a" \
	-exec install -m644 {} /usr/lib \; &&
   find bin/boost/libs -type f -name "*.so*" \
        -exec install -m755 {} /usr/lib \;

   # make proper link
   vp="1_33_1"
   for x in `find /usr/lib -type f -name "libboost*.so.$VERSION"`; do
     # get basename
     bn=${x%%so*}
     # make link
     ln -sf $x ${bn}so
     ln -sf ${bn}so ${bn/-gcc-$vp/}so
     ln -sf ${bn}a ${bn/-gcc-$vp/}a
   done

   # install source/header files
   find boost -type f \
	-exec install -D -m0644 {} /usr/include/{} \;

   # need to add doc from doxygen ?
) > $C_FIFO 2>&1
