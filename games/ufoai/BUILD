(

  sedit "s:jpeg_mem_src:jpeg_src_mem:g" src/renderer/r_image.c src/tools/ufo2map/common/imagelib.c &&

  default_game_build  &&
  
#  for FILE in $SOURCE_DIRECTORY/base/*; do
#     install -m644 $FILE /usr/share/games/ufoai/base/
#  done

  cp -fR $SOURCE_DIRECTORY/base /usr/share/games/ufoai

) > $C_FIFO 2>&1
