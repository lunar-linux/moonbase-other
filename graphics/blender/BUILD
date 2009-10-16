(

  sedit "s:2.5:2.6:" config/linux2-config.py &&

# Much of the xvidcore includes incorrectly reference the path for nasm.inc
# So lets just copy it everywhere in the xvidcore tree. Revisit on next bump.
  cd extern/xvidcore/src/ &&
  find . -type d -exec cp -v nasm.inc '{}' \; &&
  cd $SOURCE_DIRECTORY &&

  if ! module_installed freealut; then
    sedit "s;WITH_BF_OPENAL = 'true';WITH_BF_OPENAL = 'false';" config/linux2-config.py
  fi &&

  if module_installed ode ; then
    sedit "s:WITH_BF_ODE = 'false':WITH_BF_ODE = 'true':" config/linux2-config.py
    sedit "s:BF_ODE = LCGDIR + '/ode':BF_ODE = '/usr':" config/linux2-config.py
  fi &&

  if ! module_installed OpenEXR ; then
    sedit "s:WITH_BF_OPENEXR = 'true':WITH_BF_OPENEXR = 'false':" config/linux2-config.py
  fi &&

  prepare_install &&
  scons LCGDIR=lib BF_BUILDDIR=build BF_INSTALLDIR=/opt/lunar/blender &&

  install -m 755 -d /usr/share/pixmaps/ &&
  install -m 644 release/freedesktop/icons/32x32/blender.png /usr/share/pixmaps/ &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Blender
Comment=3D modeling, animation and rendering
Exec=/opt/lunar/blender/blender
Icon=/opt/lunar/blender/icons/scalable/blender.svg
Categories=Qt;KDE;Graphics;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
