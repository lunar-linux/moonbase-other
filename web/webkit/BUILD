(

  #This next line looks ugly, but allows us to load our plugins
  sedit 's:paths.append("/usr/lib64/mozilla/plugins");:paths.append("/usr/lib64/mozilla/plugins");\n    paths.append("/opt/lunar/plugins");\n:g'  WebCore/plugins/PluginDatabase.cpp &&

# Fix an icu4c problem.
  sedit "s:class TextBreakIterator;:typedef struct UBreakIterator TextBreakIterator;:" WebCore/platform/text/TextBreakIterator.h &&

  OPTS="$OPTS --enable-svg --enable-svg-animation      \
        --enable-svg-fonts --enable-svg-foreign-object \
	--enable-svg-as-image --enable-3D-transforms"  &&

  default_build &&

  install 'Programs/GtkLauncher' '/usr/bin/GtkLauncher'

) > $C_FIFO 2>&1
