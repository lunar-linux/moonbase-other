# Replace topkg watermarks
find . -type f -exec sed -i "s/%%NAME%%/$_projectname/g" {} + &&
find . -type f -exec sed -i "s/%%\(VERSION\|VERSION_NUM\)%%/$pkgver/g" {} + &&
find . -type f -exec sed -i "s|%%PKG_HOMEPAGE%%|$url|g" {} + &&

_opts+=" --with-base-threads true \
         --with-cmdliner true     \
         --with-lwt false         \
         --with-fmt false         \
         --with-js_of_ocaml false "

nativelibs=$(echo _build/src/logs*.cm{x,xa,xs,ti} _build/src/logs*.a ) &&

ocaml pkg/pkg.ml build --pkg-name logs $_opts &&

prepare_install &&
#opam-installer --prefix=/usr --libdir=lib/ocaml --docdir=share/doc
ocamlfind install logs _build/pkg/META _build/src/logs.mli _build/src/logs.cm{a,i} ${nativelibs}
