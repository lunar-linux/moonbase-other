(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  # Mad l33t hacks! ./configure passes CFLAGS/CXXFLAGS as command line switches o_O
  # configure dont like that!

  mv cvsunix/configure cvsunix/configure.wrapper	&&
  touch cvsunix/configure				&&
  chmod 755 cvsunix/configure				&&
  cat << EOF > cvsunix/configure			&&
#!/bin/bash

for fnord in \$*; do
  ARGS="\$ARGS\`echo ' '\$fnord| grep -- '^ --'\`"
done

./configure.wrapper \$ARGS

exit \$?
EOF

  default_build

) > $C_FIFO 2>&1
