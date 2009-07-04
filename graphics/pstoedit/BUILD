(

# This fixes a make failure with ming.
  sedit "s:delete d;::g" src/drvswf.cpp

# This gets around a make failure. It does not like how ImageMagick
# uses long long, and barfs.

  sedit "s:-pedantic: :g" configure

  default_build

) > $C_FIFO 2>&1
