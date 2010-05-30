(

  sedit "s|xbNtx::||" xbase/ntx.h &&

# Fixes a name space problem.
  sed -i "60i using namespace std;" xbase/xbstring.h &&
# Fixes a depreciated iostream header use.
  sedit "s:iostream.h:iostream:" xbase/xbstring.h xbase/dbf.h xbase/ndx.cpp xbase/stack.cpp&&

  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY &&

  default_build

) > $C_FIFO 2>&1

