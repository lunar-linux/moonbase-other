(

# First we need to setup the game engine.
  cd jfbuild_src_$VERSION            &&
  patch_it $SOURCE_CACHE/$SOURCE4 1  &&
  sedit "s:-march=pentium::" Makefile

# Need the fmodapi headers in the jfbuild include src tree
  cp -f /usr/include/fmod*.h include/  &&
  make                                 &&

# Now lets conjure up Duke himself
  cd ..  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&
  sedit "s:../build:jfbuild_src_$VERSION:" Makefile
  sedit "s:-march=pentium::" Makefile
  make              &&
  prepare_install   &&

  if [ ! -d /usr/games/jfduke3d ]; then
     mkdir /usr/games/jfduke3d
   else
     chown games:games /usr/games/jfduke3d
  fi

  install -g games -m 755 build* /usr/games/jfduke3d  &&
  install -g games -m 755 duke3d* /usr/games/jfduke3d &&

  gather_docs duke3d.map GNU.TXT readme.txt releasenotes.html \
              build.cfg jfbuild_src_$VERSION/buildlic.txt     \
              jfbuild_src_$VERSION/ChangeLog                  \
              jfbuild_src_$VERSION/LICENSE                    \
              jfbuild_src_$VERSION/README

) > $C_FIFO 2>&1
