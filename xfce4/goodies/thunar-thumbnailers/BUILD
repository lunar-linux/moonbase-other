(

   if in_depends $MODULE dcraw && in_depends $MODULE raw-thumbnailer ; then
     OPTS+=" --enable-raw"
   fi &&

   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

   default_build

) > $C_FIFO 2>&1
