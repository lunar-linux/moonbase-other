# Do Python2 build
python configure.py &&
default_make &&

# Do Python3 build
if in_depends $MODULE Python-3; then
  python3 configure.py &&
  default_make
fi
