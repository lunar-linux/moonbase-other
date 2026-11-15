python -m build --wheel &&

prepare_install &&
python -m installer --no-compile-bytecode --destdir=/ dist/*.whl &&

install -Dm644 $SCRIPT_DIRECTORY/vapoursynth.xml /usr/share/mime/packages/vapoursynth.xml

# symlink it to where its supposed to be
ln -sf /usr/lib/python3.14/site-packages/vapoursynth/pkgconfig/vapoursynth.pc /usr/lib/pkgconfig/vapoursynth.pc

