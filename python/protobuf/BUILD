mkdir -p /usr/share/emacs/site-lisp /usr/share/vim/vimfiles/syntax &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -Dprotobuf_BUILD_SHARED_LIBS=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

cd python &&
LDFLAGS+=" -Lbuild" 
PROTOC=build/protoc
python -m build --wheel --no-isolation &&
cd ../

prepare_install &&

cmake --install $MODULE-$VERSION &&
install -vDm 644 editors/protobuf-mode.el -t /usr/share/emacs/site-lisp/ &&
install -vDm 644 editors/proto.vim -t /usr/share/vim/vimfiles/syntax

