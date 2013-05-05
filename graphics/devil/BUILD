# this project never adopted libpng 1.4+
sedit "s:png_set_gray_1_2_4_to_8:png_set_expand_gray_1_2_4_to_8:" src-IL/src/{il_png.c,il_icon.c} &&

OPTS+=" --enable-ILU --enable-ILUT" &&

default_build
