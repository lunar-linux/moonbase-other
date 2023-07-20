_dune_release_pkgs=('dune' 'dune-action-plugin' 'dune-build-info' 'dune-configurator' 'dune-glob' 'dune-private-libs' 'dune-site' 'dune-rpc' 'dyn' 'stdune' 'ordering' 'xdg' 'chrome-trace' 'ocamlc-loc')

./configure --libdir="$(ocamlc -where)" \
            --mandir=/usr/share/man \
            --datadir=/usr/share    \
            --docdir=/usr/share/doc \
            --sbindir=/usr/bin      \
            --etcdir=/etc           \
            --bindir=/usr/bin &&

make _boot/dune.exe &&

local dune_release_pkgs='dummy' &&
for _pkg in "${_dune_release_pkgs[@]}"; do
      dune_release_pkgs+=",${_pkg}"
    done
    dune_release_pkgs="${dune_release_pkgs#dummy,}"
    echo "Building packages: ${dune_release_pkgs}"

./dune.exe build -p "${dune_release_pkgs}" --profile dune-bootstrap &&

prepare_install &&

for _pkg in "${_dune_release_pkgs[@]}"; do
      ./dune.exe install "${_pkg}" --prefix=/usr --docdir=/usr/share/doc --libdir="$(ocamlfind printconf destdir)"
done
