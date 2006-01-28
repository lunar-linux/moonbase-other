(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit "s:\$(datadir)/games:\$(datadir):"  Makefile.am  \
   images/Makefile.am  wav/Makefile.am  Parts/Bcut/Makefile.am \
   Parts/Bnormal/Makefile.am  Parts/Bpeck/Makefile.am   Parts/Bcut/Makefile.am \
   Parts/Fcut/Makefile.am     Parts/Fdrive/Makefile.am  Parts/Fnormal/Makefile.am \
   Parts/Fpeck/Makefile.am    Parts/Fsmash/Makefile.am  &&

  sedit "s:\$(datadir)/games:\$(datadir):"  Makefile.in  \
   images/Makefile.in  wav/Makefile.in  Parts/Bcut/Makefile.in \
   Parts/Bnormal/Makefile.in  Parts/Bpeck/Makefile.in   Parts/Bcut/Makefile.in \
   Parts/Fcut/Makefile.in     Parts/Fdrive/Makefile.in  Parts/Fnormal/Makefile.in \
   Parts/Fpeck/Makefile.in    Parts/Fsmash/Makefile.in  &&

  default_game_build

) > $C_FIFO 2>&1
