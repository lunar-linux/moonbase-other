(

  # Setup our environment
  sedit "s:use_openal = \'false\':use_openal = \'true\':" SConstruct &&
  sedit "s:build_blender_player = \'false\':build_blender_player = \'true\':" SConstruct &&
  # Configure SCons...I'm not sure I like this sytem...
  if echo $OPTS | grep -q "enable-gameblender" ; then
    sedit "s:use_ode = \'false\':use_ode = \'true\':" SConstruct
  else
    sedit "s:use_gameengine = \'true\':use_gameengine = \'false\':" SConstruct
  fi &&

  if echo $OPTS | grep -q "enable-blenderplugin" ; then
    sedit "s:build_blender_plugin = \'false\':build_blender_plugin = \'true\':"  SConstruct
  fi &&
  scons &&
  prepare_install &&
  install -m 755 blender /usr/bin

) > $C_FIFO 2>&1
