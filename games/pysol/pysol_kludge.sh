#!/bin/sh
#
# once upon a time there was a pysol_compile.sh file available for download
# from http://www.gophernet.org/projects/pysol_compile.sh, and this tweaked
# the source files and created a single compiled python file that could be
# used instead of installing the sources properly.
#
# this script attempts to do even less. tweak the source files as needed.

# make failure to load the soundserver non-fatal
# whitespace is important!
sed '/^import pysolsoundserver/s/.*/try:\
    import pysolsoundserver\
except ImportError:\
    pysolsoundserver = None/' < pysolaudio.py > pysolaudio.py.tmp
mv pysolaudio.py.tmp pysolaudio.py

# make sure it doesn't try to load the non-existant freecellsolver
sed '/^class FreeCellSolverWrapper:/s/.*/pysolfreecellsolver = None\
&/' < hint.py > hint.py.tmp
mv hint.py.tmp hint.py

# I've tweaked the Makefile to install the sources and to create an even
# more # minimal pysol calling script than the original...
