(

  # temp hack/fix for a buggy makewhatis script in man-1.6c 
  sedit "s:NAAM/):NAAM/:" src/makewhatis.sh &&
  ./configure -d -compatibility_mode_for_colored_groff  &&
  default_make

) > $C_FIFO 2>&1
