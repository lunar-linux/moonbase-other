(

  sedit "16i #include <sys/stat.h>" nanohttp.c &&
  sedit "s:O_WRONLY);:O_WRONLY, S_IRUSR|S_IWUSR);:" nanohttp.c &&

  default_build

) > $C_FIFO 2>&1
