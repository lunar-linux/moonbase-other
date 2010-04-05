(

  # In other distros:
  # http://sources.gentoo.org/viewcvs.py/gentoo-x86/games-fps/warsow/
  # http://aur.archlinux.org/packages.php?ID=2679

  INST_DIR=/usr/share/games/$MODULE  &&

  cd source  &&

  # Be compatible with libopenal.so.1
  # http://www.warsow.net/forum/viewtopic.php?id=20939
  sedit "s:openal-config:pkg-config openal:" Makefile  &&
  sedit "s:libopenal.so.0:libopenal.so:" snd_openal/snd_main.c  &&
  sedit "s:jpeg_mem_src:jpeg_src_mem:g" ref_gl/r_image.c  &&

  # Use shared dir
  sedit "/fs_basepath =/ s:\.:${INST_DIR}:" qcommon/files.c  &&

  # Fix for:  LoadLibrary (/usr/share/games/warsow/libs/angelwrap_i386.so):(/usr/share/games/warsow/libs/angelwrap_i386.so: undefined symbol: __sync_sub_and_fetch_4)
  # $(arch) will be i686 or x86_64
  sedit "s:CXXFLAGS = \(.*\):CXXFLAGS = -march=$(arch) \1:" ../libsrcs/angelscript/angelSVN/sdk/angelscript/projects/gnuc/makefile  &&

  make BINDIR=bin BUILD_CLIENT=YES BUILD_SERVER=YES BUILD_TV_SERVER=YES \
       BUILD_ANGELWRAP=YES BUILD_IRC=YES BUILD_SND_OPENAL=YES \
       BUILD_SND_QF=YES DEBUG_BUILD=NO  &&

  prepare_install  &&

  # The executables have an arch suffix, e.g. i386
  install -D -m755 bin/warsow.* /usr/games/warsow  &&
  install -D -m755 bin/wsw_server.* /usr/games/warsow-ded  &&
  install -D -m755 bin/wswtv_server.* /usr/games/warsow-tv  &&

  mkdir -p $INST_DIR/  &&

  # Use the freshly-compiled libs. Should really go in /usr/lib/$MODULE/
  cp -a bin/libs $INST_DIR/  &&

  cd ..  &&
  cp -ar basewsw $INST_DIR/  &&

  # Desktop icon
  install -D -m644 $SOURCE_CACHE/$SOURCE3 /usr/share/pixmaps/${MODULE}.png  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Warsow
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ActionGame;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
