(

  sedit "s:2.4:2.5:" config/linux2-config.py &&

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
  install -m 644 release/freedesktop/icons/32x32/blender.png /usr/share/pixmaps/

) > $C_FIFO 2>&1
