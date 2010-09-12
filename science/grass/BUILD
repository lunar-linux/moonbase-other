(

# Please do not alter the `OPTS+=` to `OPTS=`. There is something goofy
# going on with the grass configure script and it will not recognize
# most of the options listed in the DEPENDS with `OPTS=`.

  if [ "`arch`" == "x86_64" ] ; then
     OPTS+=" --enable-64bit --with-libs=/usr/lib64" 
  fi &&

  if in_depends $MODULE proj-4 ; then
     export PROJINC="/usr/include" &&
     export PROJLIB="/usr/lib"     &&
     sedit "s:/usr/local/share/proj:/usr/share/proj:" configure
  fi &&

  if in_depends $MODULE freetype2 ; then
     OPTS+="  --with-freetype-includes=/usr/include/freetype2"
  fi &&

#  if in_depends $MODULE readline ; then
#     OPTS+=" --with-readline-includes=/usr/include/readline --with-readline-libs=/lib"
#  fi &&

  if in_depends $MODULE mysql ; then
     OPTS+=" --with-mysql-includes=/usr/include/mysql"
  fi &&

  if in_depends $MODULE ffmpeg ; then
     sedit "s:avcodec.h:libavcodec/avcodec.h:g" configure    &&
     sedit "s:avformat.h:libavformat/avformat.h:g" configure &&
     sedit "s:swscale.h:libswscale/swscale.h:g" configure    &&
     sedit "s:<avformat.h>:<libavformat/avformat.h>:" lib/ogsf/gsd_img_mpeg.c &&
     OPTS+=" --with-ffmpeg-includes=/usr/include/"           
  fi &&

  OPTS+=" --prefix=$MODULE_PREFIX --enable-shared --with-cxx --enable-largefile" &&

  default_build &&

  echo "export GRASS_INSTALL_DIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/grass.rc  &&
  echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> $SOURCE_DIRECTORY/grass.rc  &&
  echo export PKG_CONFIG_PATH=\"'${PKG_CONFIG_PATH}':/usr/lib/pkgconfig\" >> $SOURCE_DIRECTORY/grass.rc &&

  install -m644 grass.rc /etc/profile.d/

) > $C_FIFO 2>&1

