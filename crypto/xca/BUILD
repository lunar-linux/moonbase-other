source /etc/profile.d/qt6.rc &&
export LANG='en_US.UTF-8'

# Using -DSPHINX='' prevents the need for needing all the 
# sphinxcontrib modules if Sphinx is already installed
OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DQTFIXEDVERSION=Qt6 \
        -DSPHINX='' \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS  &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
