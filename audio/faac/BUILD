(

  # Fixes compilation error:
  # mpeg4ip.h:126: error: new declaration 'char* strcasestr(const char*, const char*)'
  # /usr/include/string.h:367: error: ambiguates old declaration 'const char* strcasestr(const char*, const char*)'
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  sedit "s/\r//g" bootstrap Makefile.am configure.in &&
  ./bootstrap         &&
  default_build
  
) > $C_FIFO 2>&1

