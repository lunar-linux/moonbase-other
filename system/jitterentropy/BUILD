OPTS+=" PREFIX=/usr" &&

sedit 's:/usr/local:/usr:' Makefile &&

# Disable man page compression on install
  sed -e '/\tgzip .*\/man\// d' -i Makefile &&

# Let the package manager handle stripping
  sed -e '/\tinstall.*-s / s/-s //g' -i Makefile &&

default_make
