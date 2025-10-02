sed -i 's/-unknown//' autogen.sh &&
autoreconf -fi &&

export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" --disable-static \
        --disable-fd-passing \
        --enable-largefile \
        --disable-gpg-test \
        --disable-gpgsm-test"

#https://dev.gnupg.org/T6673#174545, strongly recommend building in its own dir
mkdir $MODULE-$VERSION &&
cd $MODULE-$VERSION &&
../configure --prefix=/usr $OPTS &&

default_make
