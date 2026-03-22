_opts+=" --libdir=/usr/lib/ocaml   \
         --mandir=/usr/share/man   \
         --datadir=/usr/share      \
         --docdir=/usr/share/doc   \
         --sbindir=/usr/bin        \
         --etcdir=/etc             \
         --bindir=/usr/bin"

./configure $_opts &&
ocaml boot/bootstrap.ml --verbose &&

./_boot/dune.exe build @install -p dune --profile dune-bootstrap --display short &&

prepare_install &&
./dune.exe install dune $_opts
