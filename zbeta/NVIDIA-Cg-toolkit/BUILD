(

  prepare_install &&

  if [ "`arch`" = "x86" ]; then
    cp -af usr/lib/*.so   /usr/lib/
   else
    cp -af usr/lib64/*.so /usr/lib/
  fi &&

  cp -af usr/include/*  /usr/include/ &&
  cp -af usr/share/*    /usr/share/   &&
  cp -af usr/bin/*      /usr/bin/     &&
  cp -af usr/local/*    /usr/share/doc/NVIDIA-Cg-toolkit/

) > $C_FIFO 2>&1
