(

# added this hack to fix liferea-1.0.18. callbacks.c uses debug0 incorrectly. This should be removed later!!!
  sedit "s/debug0(\"/debug0(DEBUG_GUI, \"/" src/callbacks.c &&

  default_build

) > $C_FIFO 2>&1
