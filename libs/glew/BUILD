(

# This little sedit takes care of the borked make on some GL stuff.
  sedit "s:#undef GLAPIENTRY::" include/GL/glew.h &&
# This little sedit gets rid of some stupid DOS CRs.
  sedit 's/.$//' Makefile config/config.guess &&
# This little sedit I leave alone.
  sedit "s/-O2/$CFLAGS/" config/Makefile.linux &&

# And this little make lets us go wee, wee all the way home.
  default_make

) > $C_FIFO 2>&1
