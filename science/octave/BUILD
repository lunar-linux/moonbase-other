(
  #dvi generation dies with less then 2GB RAM with current texlive installation
  OPTS+=" --disable-docs" &&

  #needed for SuiteSparse 4.0.0
  #this should be fixed in the next release of octave
  sedit "s:\(\$(octave_LDADD) \$(LIBS)\):\1 -lsuitesparseconfig -lrt:" src/Makefile.in &&
  bad_flags ",--as-needed" &&


  sedit "s:suitesparse:SuiteSparse:g" configure &&

  if in_depends $MODULE SuiteSparse ; then
    export LIBS+=" -lcamd -lmetis"
  fi &&

  CXXFLAGS="-lpthread" &&

  default_build

) > $C_FIFO 2>&1
