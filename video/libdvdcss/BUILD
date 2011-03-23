(

  OPTS+=" --disable-static" &&

# This needs to be revisited on the next version bump.

  default_config  &&

  sedit 's|all: stamp-doxygen stamp-latex|all:stamp-doxygen|' doc/Makefile

  default_make

) > $C_FIFO 2>&1
