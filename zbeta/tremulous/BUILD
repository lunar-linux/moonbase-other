(

  patch_it tremulous-svn755-upto-971.patch 0 &&
  patch_it tremulous-t971-client.patch 0 &&

  # Fix the gcc-4.3.3 Werror issue
  sedit '16s/-Werror //' src/tools/asm/Makefile &&

  make \
    DEFAULT_BASEDIR="/usr/share/games/tremulous" \
    BUILD_GAME_SO=0      \
    BUILD_GAME_QVM=0     \
    USE_CODEC_VORBIS=1   \
    USE_OPENAL=1         \
    USE_LOCAL_HEADERS=0  &&

  prepare_install &&

  mkdir -p /usr/games /usr/share/games/tremulous &&
  cp -af build/release-linux-*/tremulous-smp.* /usr/games/tremulous &&
  cp -af build/release-linux-*/tremded.* /usr/games/tremulous-ded &&
  cp -arf base /usr/share/games/tremulous/ &&

  gather_docs ChangeLog manual.pdf

) > $C_FIFO 2>&1
