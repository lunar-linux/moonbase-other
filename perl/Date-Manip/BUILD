PERL_VERSION=$(module_version perl) &&

perl Makefile.PL &&

make &&

make test &&

prepare_install &&

cd blib &&

cp script/dm_* /usr/bin/ &&

cp man1/*.1 /usr/share/man/man1/ &&
cp man3/*.3 /usr/share/man/man3/ &&

rm lib/Date/.exists
cp -r lib/Date /usr/lib/perl5/site_perl/$PERL_VERSION/
