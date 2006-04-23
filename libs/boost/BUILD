(

  # build bjam (which is used instead of make)
  cd  "$SOURCE_DIRECTORY/tools/build/jam_src"  &&
  ./build.sh gcc  &&
  cd  "$SOURCE_DIRECTORY"

  BJAMBIN="$SOURCE_DIRECTORY/tools/build/jam_src/bin.*/bjam"

  $BJAMBIN  -sBOOST_ROOT="$SOURCE_DIRECTORY"  \
            -sTOOLS=gcc                       \
            --prefix=/usr                     \
            --layout=system                   \
            $OPTS

  $BJAMBIN  -sBOOST_ROOT="$SOURCE_DIRECTORY"  \
            -sTOOLS=gcc                       \
            --prefix=/usr                     \
            --layout=system                   \
            $OPTS

  prepare_install  &&

  cd  "$SOURCE_DIRECTORY/tools/build"                &&
  mkdir -p /usr/share/boost-build                    &&
  cp -pPR index.html v1/ v2/ /usr/share/boost-build  &&

  cd  "$SOURCE_DIRECTORY"

  $BJAMBIN  -sBOOST_ROOT="$SOURCE_DIRECTORY"  \
            -sTOOLS=gcc                       \
            --prefix=/usr                     \
            --layout=system                   \
            $OPTS                             \
            install

) > $C_FIFO 2>&1
