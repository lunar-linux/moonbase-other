(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&

  sedit "s:int i = 0:int j = 0:g" bin/dumprecs.cpp &&
  sedit "s:MyFile.DumpRecord(i+1):MyFile.DumpRecord(j+1):g" bin/dumprecs.cpp &&
  sedit "s:i++:j++:g" bin/dumprecs.cpp &&

  default_build

) > $C_FIFO 2>&1

