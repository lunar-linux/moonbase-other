(


 patch_it $SOURCE_CACHE/$SOURCE2 1 &&

 sedit "s:/usr/local:/usr:"                    Makefile  &&
 sedit "s:/share:/share/games:"                Makefile  &&
 sedit "s:/bin:/games:"                        Makefile  &&
 sedit "s:(DATADIR)/:(PREFIX)/share/:"         Makefile  &&
 sedit "s:/share/frozen:/share/games/frozen:"  Makefile  &&

 default_make
 
) > $C_FIFO 2>&1
