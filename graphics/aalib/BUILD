# fix the compile error with GCC/C23
sed -i 's/Gpm_Wgetch[[:space:]]*(stdscr)/Gpm_Wgetch()/g' src/aacurkbd.c &&

autoreconf -fi &&

LDFLAGS=$(echo $LDFLAGS | sed "s/-z combreloc//") &&

default_build
