(

   bad_flags -malign-double -s

   patch_it $SOURCE2  0  &&
   patch_it $SOURCE3  0  &&
   patch_it $SOURCE4  0  &&
   patch_it $SOURCE5  0  &&
   patch_it $SOURCE6  0  &&
   patch_it $SOURCE7  0  &&
   patch_it $SOURCE8  0  &&
   patch_it $SOURCE9  0  &&
   patch_it $SOURCE10 0  &&
   patch_it $SOURCE11 0  &&

   OPTS+=" --bindir=/bin                 \
           --without-bash-malloc         \
           --without-installed-readline  \
           --with-curses                 \
           --enable-static-link          \
           --disable-profiling"         &&

   default_config   &&
   make version.h   &&
   make             &&
   prepare_install  &&

   cp -f bash /bin/bash_static

) > $C_FIFO 2>&1
