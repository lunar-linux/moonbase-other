# Replace topkg watermarks
find . -type f -exec sed -i "s/%%NAME%%/$_projectname/g" {} + &&
find . -type f -exec sed -i "s/%%\(VERSION\|VERSION_NUM\)%%/$pkgver/g" {} + &&
find . -type f -exec sed -i "s|%%PKG_HOMEPAGE%%|$url|g" {} + &&

ocaml pkg/pkg.ml build --with-base-threads true --with-cmdliner true --with-lwt false --with-fmt true --with-js_of_ocaml false&&
prepare_install &&
opam-installer --prefix=/usr --libdir=lib/ocaml --docdir=share/doc
