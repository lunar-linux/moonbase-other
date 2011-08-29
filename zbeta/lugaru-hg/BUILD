(

  cmake -DCMAKE_BUILD_TYPE=RELEASE              \
        -DLUGARU_INSTALL_PREFIX=/opt/lugaru     \
        -DLUGARU_FORCE_INTERNAL_OPENGL:BOOL=OFF \
        $OPTS

  default_make

  install -d /usr/games
  ln -sf /opt/lugaru/lugaru /usr/games/lugaru

) > $C_FIFO 2>&1
