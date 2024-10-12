mv configure.in configure.ac &&
rm acinclude.m4 &&
sed -i -e 's:-march=i[345]86 ::g' configure.ac &&
touch ChangeLog NEWS &&

autoreconf -fi &&

default_build
