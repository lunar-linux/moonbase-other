(

   OPTS+='--with-x --with-xcb --with-spidermonkey=/usr/include/js'
   if [ `lvu installed udev` -ge 150 ]; then
   OPTS+=" --with-gudev"
   fi &&
   default_build

) > $C_FIFO 2>&1
