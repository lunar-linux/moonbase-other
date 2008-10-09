(

  # No docs until the clanlib developers fix their autotools
  OPTS="$OPTS --disable-docs" 
 
  sedit "s/Documentation //g" Makefile.in &&

  default_build &&
  ln -sf /usr/include/ClanLib-${VERSION:0:3} /usr/include/ClanLib

) > $C_FIFO 2>&1
