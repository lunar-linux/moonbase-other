(

#zcat $SOURCE_CACHE/$SOURCE2 | patch -p1  &&
default_config &&
default_make &&
mkdir -p $DOCUMENT_DIRECTORY/mtools &&
cp Changelog NEWPARAMS $DOCUMENT_DIRECTORY/mtools

) > $C_FIFO 2>&1
