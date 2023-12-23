# Replace topkg watermarks
find . -type f -exec sed -i "s/%%NAME%%/$_projectname/g" {} + &&
find . -type f -exec sed -i "s/%%\(VERSION\|VERSION_NUM\)%%/$pkgver/g" {} + &&
find . -type f -exec sed -i "s|%%PKG_HOMEPAGE%%|$url|g" {} + &&

_opts+=" --with-base-threads true \
         --with-cmdliner true     \
         --with-lwt false         \
         --dev-pkg false          \
         --with-js_of_ocaml false "


ocaml pkg/pkg.ml build $_opts &&

prepare_install &&
opam-installer --prefix=/usr --libdir=lib/ocaml --docdir=share/doc
