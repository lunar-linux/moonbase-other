DEST="/usr/lib/$MODULE" &&

cd bin &&
# Configure paths
setconf dart2js BIN_DIR "$DEST/bin"
setconf dart2js PROG_NAME "$DEST/bin/dart2js"
setconf dartanalyzer SCRIPT_DIR "$DEST/bin"
setconf pub BIN_DIR "$DEST/bin"
setconf pub SDK_DIR "$DEST/"
setconf dartfmt BIN_DIR "$DEST/bin"
setconf dartfmt SDK_DIR "$DEST/"
cd .. &&

prepare_install &&

# Create directories
install -d $DEST &&

# Package the files
cp -a * $DEST/ &&

# Set up symbolic links for the executables
for f in dart dart2js dartanalyzer pub dartfmt; do
  ln -sf "$DEST/bin/$f" "/usr/bin/$f"
done
