cd src

unset CPP 

sed 's|$prefix/bin|/usr/lib/john|' -i configure.ac &&

autoreconf -fiv &&
default_config &&

OPTS+=" --enable-pkg-config --enable-nt-full-unicode --with-systemwide"

# https://wiki.gentoo.org/wiki/Gcc_10_porting_notes/fno_common
if [ '$(arch)' == "x86_64" ]; then
  sedit 's|CFLAGS = -c -Wall -O2|CFLAGS = -c -Wall -O2 -march=x86-64 -DJOHN_SYSTEMWIDE=1 -fcommon|' Makefile &&
  sedit 's|^LDFLAGS =\(.*\)|LDFLAGS =\1 -lm|' Makefile &&
  sedit 's|-m486||g' Makefile
else
  sedit 's|CFLAGS = -c -Wall -O2|CFLAGS = -c -Wall -O2 -march=i686 -DJOHN_SYSTEMWIDE=1 -fcommon|' Makefile
fi &&

sedit 's|LIBS = -ldes|LIBS = -ldes -Ldes|' Makefile &&

make clean &&
make &&
prepare_install &&

mkdir -p /etc/john &&
mkdir -p /usr/share/john/rules &&

cd $SOURCE_DIRECTORY/run &&

# config file
sedit 's|$JOHN/john.local.conf|/etc/john/john.local.conf|g' john.conf &&
sedit 's|$JOHN|/usr/share/john|g' john.conf &&

# install password list, charset files
install -m644 *.conf /usr/share/john/ &&
install -m644 password.lst /usr/share/john/ &&
install -m644 dictionary.rfc2865 /usr/share/john/ &&
install -m644 stats /usr/share/john/ &&
install -m644 *.chr /usr/share/john/ &&
install -m644 {dumb16,dumb32,dynamic}.conf /usr/share/john/ &&
install -m644 rules/* /usr/share/john/rules/ &&

# install scripts
john_scripts=(benchmark-unify \
              cracf2john.py \
              genincstats.rb \
              ldif2john.pl \
              lion2john-alt.pl \
              lion2john.pl \
              netntlm.pl \
              netscreen.py \
              pass_gen.pl \
              radius2john.pl \
              sap2john.pl \
              sha-dump.pl \
              sha-test.pl \
              sipdump2john.py)

for john_script in "${john_scripts[@]}"; do
  install -m755 ${john_script} /usr/share/john
done &&

install -Dm644 john.bash_completion /etc/bash_completion.d/john &&

# install binaries
install -Dm755 john /usr/bin/john &&
install -Dm755 calc_stat /usr/bin/calc_stat &&
install -Dm755 genmkvpwd /usr/bin/genmkvpwd &&
install -Dm755 mkvcalcproba /usr/bin/mkvcalcproba &&
install -Dm755 relbench /usr/bin/relbench &&
install -Dm755 tgtsnarf /usr/bin/tgtsnarf &&
install -Dm755 mailer /usr/bin/john-mailer &&
install -Dm755 raw2dyna /usr/bin/raw2dyna &&

# create links
cd /usr/bin
ln -sf john hccap2john
ln -sf john keepass2john
ln -sf john pdf2john
ln -sf john pwsafe2john
ln -sf john racf2john
ln -sf john rar2john
ln -sf john ssh2john
ln -sf john unafs
ln -sf john unique
ln -sf john unshadow
ln -sf john undrop
ln -sf john zip2john
