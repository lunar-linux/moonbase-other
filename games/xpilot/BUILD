(

  xmkmf -a  &&
  find . -type f -name 'Makefile' -print | while read i
      do
        sedit "s:INSTMANDIR = \$(PREFIX)/man/man\$(MANSUFFIX):INSTMANDIR = /usr/share/man6:" $i 
	sedit "s:INSTLIBDIR = \$(PREFIX)/lib/xpilot:INSTLIBDIR = /usr/share/games/xpilot:" $i 
	sedit "s:INSTBINDIR = \$(PREFIX)/bin:INSTBINDIR = /usr/games:" $i 
      done

  default_make

) > $C_FIFO 2>&1
