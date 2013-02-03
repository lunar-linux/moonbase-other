
OPTS+=" --disable-static"

default_config &&

sedit 's;^hardcode_libdirt_flag_spec=.*;hardcode_libdir_flag_spec="";g' libtool &&
sedit 's;^runpath_var=LD_RUN_PATH;runpath_var=DIE_RPATH_DIE;g' libtool &&

default_make

