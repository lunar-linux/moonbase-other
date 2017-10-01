perl Makefile.PL &&

prepare_install &&

make

cp ./script/sgmlspl.pl /usr/bin/ &&
ln -sf /usr/bin/sgmlspl.pl /usr/bin/sgmlspl &&

cp ./blib/man3/*.3 /usr/share/man/man3/ &&

cp -fR ./lib/* /usr/lib/perl5/$(lvu installed perl)/
