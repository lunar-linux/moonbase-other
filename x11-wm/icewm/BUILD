(
  sedit "s:LFLAGS =:LDFLAGS = -lintl:" src/Makefile.in &&
  sedit "s:LFLAGS:LDFLAGS:g" src/Makefile.in           || exit 1
  
#lets add KDEDIR var to enviro, if it is not defined AND if kdebase3
#is installed  

  module_installed kdebase3 && 
  [ -z "$KDEDIR" ]          && 
  export KDEDIR=/opt/lunar/kde/3
  
#lets add kde and gnome menu support to the build, iff
#there is a gnome-config avail :=)
#the support maybe set to on/off via preferences

  which gnome-config 2>/dev/null >/dev/null && 
  OPTS=$OPTS" --with-gnome-menus"

#here are some options :=) with anti-aliasing support  
  OPTS=$OPTS" --with-docdir=/usr/share/doc --enable-nls \
  --enable-i18n --enable-xfreetype --enable-antialiasing"

#lets default build the beast 
  default_build

) > $C_FIFO 2>&1
