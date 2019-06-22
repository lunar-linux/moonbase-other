sed -i 's/python -/$PYTHON -/' configure.ac &&
sed -i '1s/python$/python2/' data/ontology2code &&

autoreconf -fi &&

export PYTHON=/usr/bin/python2 &&

OPTS+=" --enable-fts \
        --disable-docs \
        --enable-datahub \
        --enable-explain-queries" &&

default_build
