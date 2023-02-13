#-DwxBUILD_COMPATIBILITY=2.8 is required for erlang
OPTS+=" -DwxBUILD_TOOLKIT=gtk3 -DwxUSE_REGEX=sys -DwxUSE_PRIVATE_FONTS=ON -DwxUSE_GTKPRINT=ON -DwxBUILD_OPTIMISE=ON -DwxBUILD_COMPATIBILITY=2.8"
default_cmake_build &&

make clean &&  

if in_depends $MODULE qt5; then
source /etc/profile.d/qt5.rc &&
OPTS+=" -DwxBUILD_TOOLKIT=qt -DwxUSE_REGEX=sys -DwxUSE_PRIVATE_FONTS=ON -DwxBUILD_OPTIMISE=ON -DwxBUILD_COMPATIBILITY=2.8"
default_cmake_build
fi
