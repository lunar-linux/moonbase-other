OPTS+=" --enable-shared" &&

TARGETS="host" &&
if [[ "$USE_R600" = "y" ]]; then
  TARGETS+=",r600"
fi &&

OPTS+=" --enable-targets=$TARGETS" &&

# ocaml bindings not supported on lunar right now
OPTS+=" --disable-bindings" &&

mkdir $MODULE-ootb &&
cd $MODULE-ootb &&
ln -s ../configure . &&

default_build
