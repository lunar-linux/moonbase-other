(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  #This next line looks ugly, but allows us to load our plugins
  sedit 's:paths.append("/usr/lib64/mozilla/plugins");:paths.append("/usr/lib64/mozilla/plugins");\n    paths.append("/opt/lunar/plugins");\n:g'  WebCore/plugins/PluginDatabase.cpp &&

# Fix an icu4c problem.
  sedit "s:class TextBreakIterator;:typedef struct UBreakIterator TextBreakIterator;:" WebCore/platform/text/TextBreakIterator.h &&

  OPTS+=" --enable-svg --enable-svg-animation      \
        --enable-svg-fonts --enable-svg-foreign-object \
        --enable-svg-as-image --enable-3D-transforms   \
        --enable-optimizations --disable-gtk-doc-html" &&

  default_build &&

  install 'Programs/GtkLauncher' '/usr/bin/GtkLauncher' &&

  cp WebKit/gtk/NEWS .

) > $C_FIFO 2>&1
