(

  # Build with devil - from http://gentoo-portage.com/dev-games/cegui
  sedit "s/ILvoid/void/g" ImageCodecModules/DevILImageCodec/CEGUIDevILImageCodec.cpp &&

  OPTS+=" --disable-samples" &&

  default_build

) > $C_FIFO 2>&1

