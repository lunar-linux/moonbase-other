if in_depends $MODULE lablgtk; then
  make UISTYLE=gtk3
else
  make UISTYLE=text DEBUGGING=false THREADS=true
fi &&

prepare_install &&
cp src/unison /usr/bin/ &&
cp src/unison-* /usr/bin/ &&

install -Dm0644 icons/U.svg /usr/share/icons/hicolor/scalable/apps/$MODULE.svg
