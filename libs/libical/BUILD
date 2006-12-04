(

# This is just easier than monkeying around with their
# config.sub to add the needed machine types, etc.

  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY

  default_config &&

  sedit "s:CFLAGS =  -O2:CFLAGS = -fPIC  -O2:" src/libical/Makefile
  sedit "s:CFLAGS =  -O2:CFLAGS = -fPIC  -O2:" src/python/Makefile
  sedit "s:CFLAGS =  -O2:CFLAGS = -fPIC  -O2:" src/libicalss/Makefile

  default_make

) > $C_FIFO 2>&1
