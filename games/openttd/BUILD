CXXFLAGS+=' -DU_USING_ICU_NAMESPACE=1'

./configure --prefix-dir=/usr \
            --man-dir=/share/man/man6 \
            $OPTS &&

default_make &&

cd /usr/share/games/openttd/baseset/ &&
unpack $SOURCE2 &&
unpack $SOURCE3 &&
unpack $SOURCE4
