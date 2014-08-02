
  ./autogen.sh &&

  CFLAGS+=" -fPIC" &&
  sedit "s:openjpeg-2.0:openjpeg-1.5:g" configure &&

# Do a little dance, make a little love, get Python tonight.
# The way their swig/Python scripts works, gdal needs to be
# installed cause of where their bindings look during the build.
  if in_depends $MODULE Python ; then
    OPTS+=" --without-python"
  fi &&

  default_build &&

  if in_depends $MODULE Python ; then
    cd swig/python &&
    python setup.py build &&
    python setup.py install
  fi
