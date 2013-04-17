#dvi generation dies with less then 2GB RAM with current texlive installation
OPTS+=" --disable-docs" &&

# fix for gcc 4.8 - this is fixed in the next release
sedit "/#include \"mexproto.h\"/ d" src/mex.h &&
sedit "s:#define mxMAXNAME 64:\0\n\n#include \"mexproto.h\":" src/mex.h &&

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
