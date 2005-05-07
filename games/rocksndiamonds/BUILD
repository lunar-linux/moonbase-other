(

  prepare_install &&
  make            &&
  
  mkdir -p /usr/games/rocksndiamonds           &&
  cp rocksndiamonds /usr/games/rocksndiamonds/ &&
  cp -fR graphics   /usr/games/rocksndiamonds/ &&
  cp -fR levels     /usr/games/rocksndiamonds/ &&
  cp -fR music      /usr/games/rocksndiamonds/ &&
  cp -fR sounds     /usr/games/rocksndiamonds/ &&
  cp -fR scores     /usr/games/rocksndiamonds/

) > $C_FIFO 2>&1
