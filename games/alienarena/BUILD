(

  sedit "s:xf86dga.h:Xxf86dga.h:" source/unix/gl_glx.c &&

  DATADIR="/usr/share/games/$MODULE"  &&
  LIBDIR="/usr/lib/$MODULE"  &&

  # Remove some pre-compiled libs, to ensure they are recompiled
  rm crx crded {arena,data1}/game.so  &&

  cd source  &&

# A temporary sedit to fix the jpeg-8 name space collision
  sedit "s:jpeg_mem_src:jpeg_load_raw:g" ref_gl/r_image.c &&
  
  # Lunar isn't multilib
  sedit "s:lib64:lib:" Makefile  &&

  make \
    PREFIX=/usr WITH_DATADIR=yes WITH_LIBDIR=yes ARCH="$CPU" \
    DATADIR="$DATADIR" \
    LIBDIR="$LIBDIR"  &&

  prepare_install  &&

  mkdir -p /usr/games $DATADIR $LIBDIR  &&

  # OpenGL seems more stable than SDL, but may vary.
  # These are sane executable filenames.
  install -D -m755 release/crx   /usr/games/${MODULE}      &&
  install -D -m755 release/crded /usr/games/${MODULE}-ded  &&
  install -D -m755 release/arena/game.so $LIBDIR/arena/game.so   &&

  # Data files (might contain spaces)
  cd ..  &&
  find arena botinfo data1 -type f | while read i ; do
    install -D -m644 "$i" "${DATADIR}/$i"
  done  &&

  # Desktop icon
  install -D -m644 aa.png /usr/share/pixmaps/${MODULE}.png  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Alien Arena
Comment=Multiplayer retro sci-fi deathmatch
Exec=$MODULE
Icon=$MODULE
Categories=Game;ActionGame;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop  &&

  mv docs/{license,README}.txt .  &&
  rm -r docs  &&
  gather_docs *.txt

) > $C_FIFO 2>&1
