(

  #This next line looks ugly, but allows us to load our plugins
  sedit 's:paths.append("/usr/lib64/mozilla/plugins");:paths.append("/usr/lib64/mozilla/plugins");\n    paths.append("/opt/lunar/plugins");\n:g'  WebCore/plugins/PluginDatabase.cpp

  OPTS="$OPTS --enable-svg-experimental --enable-svg --enable-svg-animation \
        --enable-svg-filters --enable-svg-fonts --enable-svg-foreign-object \
	--enable-svg-as-image --enable-svg-use-element --enable-3D-transforms"

  default_build

) > $C_FIFO 2>&1
