_dune_release_pkgs=('dune' 'dune-action-plugin' 'dune-build-info' 'dune-configurator' 'dune-glob' 'dune-private-libs'
                    'dune-site' 'dune-rpc' 'dyn' 'stdune' 'ordering' 'xdg' 'chrome-trace' 'ocamlc-loc')

_opts+=" --libdir=/usr/lib/ocaml   \
         --mandir=/usr/share/man   \
         --datadir=/usr/share      \
         --docdir=/usr/share/doc   \
         --sbindir=/usr/bin        \
         --etcdir=/etc             \
         --bindir=/usr/bin"

./configure $_opts &&
ocaml boot/bootstrap.ml --verbose &&

local dune_release_pkgs='dummy' &&
for _pkg in "${_dune_release_pkgs[@]}"; do
      dune_release_pkgs+=",${_pkg}"
    done
    dune_release_pkgs="${dune_release_pkgs#dummy,}"
    echo "Building packages: ${dune_release_pkgs}"

./_boot/dune.exe build -p "${dune_release_pkgs}" --profile dune-bootstrap --display short &&
prepare_install &&

for _pkg in "${_dune_release_pkgs[@]}"; do
  ./dune.exe install "${_pkg}" $_opts
done
