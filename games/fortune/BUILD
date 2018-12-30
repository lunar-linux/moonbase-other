OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DNO_OFFENSIVE=OFF \
        -DLOCALDIR=/usr/share/games/fortunes/ \
        -DLOCALODIR=/usr/share/games/fortunes/off/ \
        -DCOOKIEDIR=/usr/share/games/fortunes/ \
        -DOCOOKIEDIR=/usr/share/games/fortunes/off/"

default_cmake_build &&

# Remove the .u8 simlinks from the main cookie directory
# and the offensive directory (if it exists)
rm -f /usr/share/games/fortunes/*.u8 &&
rm -f /usr/share/games/fortunes/off/*.u8 &&

gather_docs Notes cookie-files Offensive
