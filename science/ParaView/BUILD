default_pre_build &&

if in_depends $MODULE qt5 ; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -DPARAVIEW_QT_VERSION=5 -DVTK_QT_VERSION=5 -DQT_QMAKE_EXECUTABLE=/usr/lib/qt5/bin/qmake -DVTK_Group_Qt=1"
fi &&

# This would be nice, but does not work over here...
#OPTS+=" -DUSE_EXTERNAL_VTK=1" &&
# Doesn't like out version of gl2ps and as of version 5.5.0 still the case
# Need to specify pygments here else it use included pygments thus
# stomping on system pygments. Have the same clobber with protobuf.

OPTS+=" -DPARAVIEW_ENABLE_XDMF3=1              \
        -DVTK_USE_SYSTEM_ZLIB=1                \
        -DVTK_USE_SYSTEM_TIFF=1                \
        -DVTK_USE_SYSTEM_LIBXML2=1             \
        -DVTK_USE_SYSTEM_PNG=1                 \
        -DVTK_USE_SYSTEM_JPEG=1                \
        -DVTK_USE_SYSTEM_GLEW=1                \
        -DVTK_USE_SYSTEM_FREETYPE=1            \
        -DVTK_USE_SYSTEM_HDF5=1                \
        -DVTK_USE_SYSTEM_JSONCPP=1             \
        -DVTK_USE_SYSTEM_EXPAT=1               \
        -DVTK_USE_SYSTEM_OGGTHEORA=1           \
        -DVTK_USE_SYSTEM_PYGMENTS=1            \
        -DVTK_USE_SYSTEM_PROTOBUF=1            \
        -DVTK_USE_SYSTEM_GL2PS=1               \
        -DBUILD_SHARED_LIBS=1                  \
        -DVTK_Group_StandAlone=1               \
        -DVTK_RENDERING_BACKEND=OpenGL2        \
        -DPARAVIEW_INSTALL_DEVELOPMENT_FILES=1 \
        -DVTK_PYTHON_FULL_THREADSAFE=1         \
        -DPARAVIEW_ENABLE_PYTHON=1"           &&

default_cmake_build

echo "Categories=Qt;KDE;Science;" >> /usr/share/applications/org.paraview.ParaView.desktop
