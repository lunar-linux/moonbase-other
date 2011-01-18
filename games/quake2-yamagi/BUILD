(

  # Set default basedir
  sed -i -e 's:"basedir", ".":"basedir", "/usr/share/games/quake2":' src/common/files.c &&

  # Use yamagi.cfg in ~/.quake2/baseq2/
  sed -i -e 's:config\.cfg:yamagi\.cfg:' src/common/common.c src/client/cl_main.c &&

  # Add libdir to search path, to find /usr/lib/yamagi/baseq2/game.so
  sed -i -e '/FS_AddGameDirectory(va(\"%s\/\" BASEDIRNAME, fs_basedir/a\    FS_AddGameDirectory(va(\"%s\/\" BASEDIRNAME, \"/usr/lib/yamagi\"));' src/common/files.c &&

  # Use libdir, to find /usr/lib/yamagi/ref_gl.so
  sed -i -e 's:path = Cvar_Get ("basedir", ".", CVAR_NOSET)->string;:path = "/usr/lib/yamagi";:' src/posix/vid/refresh.c &&
  
  # Turn debugging on
  #sed -i -e 's:"fs_debug", "0":"fs_debug", "1":' src/common/files.c &&

  make &&
  prepare_install &&
  mkdir -p /usr/games /usr/lib/yamagi/{baseq2,ctf} /usr/share/games/quake2/baseq2 &&
  install -m755 release/q2ded /usr/games/yamagi-ded &&
  install -m755 release/quake2 /usr/games/yamagi &&

  # Maybe useful:
  # See http://sources.gentoo.org/viewcvs.py/gentoo-x86/games-fps/quake2-icculus/files/ - quake2-icculus-0.16.1-gentoo-paths.patch
  # http://deponie.yamagi.org/quake2/debs/source/yamagi-quake2_2.11-1.diff.gz
  install -m755 release/ref_gl.so /usr/lib/yamagi/ &&

  install -m755 release/baseq2/game.so /usr/lib/yamagi/baseq2/ &&
  install -m755 release/ctf/game.so /usr/lib/yamagi/ctf/ &&
  install -m644 icon/Quake2.png /usr/share/icons/yamagi.png

) > $C_FIFO 2>&1
