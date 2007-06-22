(

 cp include/config.h include/config.h.orig
 cat include/config.h.orig \
 | sed -e 's:/\* #define X11_GRAPHICS \*/:#define X11_GRAPHICS:' \
       -e 's:/\* #define USE_XPM \*/:#define USE_XPM:' \
       -e 's:^#define COMPRESS .*$:#define COMPRESS "/bin/gzip":' \
       -e 's:^#define COMPRESS_EXTENSION.*$:#define COMPRESS_EXTENSION ".gz":' \
       -e 's:/\* #define DLB \*/:#define DLB:' \
       -e 's:/\* #define AUTOPICKUP_EXTENSIONS \*/:#define AUTOPICKUP_EXTENSIONS:' \
 > include/config.h
 # cp include/config.h* /tmp

 cp include/unixconf.h include/unixconf.h.orig
 cat include/unixconf.h.orig \
 | sed -e 's:/\* #define LINUX \*/:#define LINUX:' \
       -e 's:/\* #define TIMED_DELAY \*/:#define TIMED_DELAY:' \
 > include/unixconf.h
 # cp include/unixconf.h* /tmp

 cp sys/unix/Makefile.src sys/unix/Makefile.src.orig
 cat sys/unix/Makefile.src.orig \
 | sed -e 's:^# CC = gcc *$:CC = gcc:' \
       -e 's:^# LFLAGS = -L/usr/X11R6/lib:LFLAGS = -L/usr/X11R6/lib:' \
       -e 's:^WINSRC = $(WINTTYSRC):WINSRC = $(WINTTYSRC) $(WINX11SRC):' \
       -e 's:^WINOBJ = $(WINTTYOBJ):WINOBJ = $(WINTTYOBJ) $(WINX11OBJ):' \
       -e 's:^WINTTYLIB = -ltermlib:WINTTYLIB = -lncurses:' \
       -e 's:^WINX11LIB = -lXaw -lXmu -lXext -lXt -lX11:WINX11LIB = -lXaw -lXmu -lXext -lXt -lXpm -lX11:' \
       -e 's:^WINLIB = $(WINTTYLIB):WINLIB = $(WINTTYLIB) $(WINX11LIB):' \
 > sys/unix/Makefile.src
 # cp sys/unix/Makefile.src* /tmp

 cp sys/unix/Makefile.utl sys/unix/Makefile.utl.orig
 cat sys/unix/Makefile.utl.orig \
 | sed -e 's:^# CC = gcc *$:CC = gcc:' \
       -e 's:^# LFLAGS = -L/usr/X11R6/lib:LFLAGS = -L/usr/X11R6/lib:' \
       -e 's:^YACC *= yacc:YACC = bison -y:' \
       -e 's:^LEX *= lex:LEX = flex:' \
 > sys/unix/Makefile.utl
 # cp sys/unix/Makefile.utl* /tmp

 cp sys/unix/Makefile.top sys/unix/Makefile.top.orig
 cat sys/unix/Makefile.top.orig \
 | sed -e 's:^GAMEGRP *= bin:GAMEGRP = games:' \
       -e 's:^GAMEPERM = 04755:GAMEPERM = 02755:' \
       -e 's:^FILEPERM = 0644:FILEPERM = 0664:' \
       -e 's:^DIRPERM = 0755:DIRPERM = 0775:' \
       -e 's:^VARDATND =.*$:VARDATND = x11tiles NetHack.ad pet_mark.xbm rip.xpm:' \
 > sys/unix/Makefile.top
 # cp sys/unix/Makefile.top* /tmp

 sh sys/unix/setup.sh
 make all

 prepare_install
 make install
 chmod 0775 /usr/games/lib/nethackdir

) > $C_FIFO 2>&1

