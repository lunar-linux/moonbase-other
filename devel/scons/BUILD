# emulate a release as they apparently want this filled in at build time...
# see `scons --version`
#         script: v__VERSION__.__BUILD__, __DATE__, by __DEVELOPER__ on __BUILDSYS__
local _copyright='Copyright (c) 2001 - 2019 The SCons Foundation'
local _date_of_release="$(grep "RELEASE ${VERSION}" src/CHANGES.txt | cut -d ',' -f2)"
local _date="$(date -d "${_date_of_release}" +'%Y-%m-%d %H:%M:%S')"

# change globals in all scripts
for _script in $(find src/ -type f -iname "*.py"); do
    sed -e "s|__COPYRIGHT__|${_copyright}|g" \
        -e "s|__FILE__|/src/script/${_script}|g" \
        -e 's/__REVISION__/none/g' \
        -e "s|__DATE__|${_date}|g" \
        -e 's/__BUILDSYS__/none/g' \
        -e 's/__DEVELOPER__/none/g' \
        -e "s/__VERSION__/${VERSION}/g" \
        -i "${_script}"
done &&

# copy scripts to correct locations
for _script in scons{,ign,-time,-configure-cache}; do
    cp -v "src/script/${_script}.py" "src/script/${_script}"
done &&

# disabling postscript creation, because it's broken
sed -e '614,619d' \
    -e '/api_ps =/d' \
    -e 's/api_ps,//' \
    -i doc/SConscript &&

# fixing refentrytitle, so man pages are rendered with correct file names
sed -e 's/refentrytitle>SCONS-TIME/refentrytitle>scons-time/' \
    -e 's/refentrytitle>SCONSIGN/refentrytitle>sconsign/' \
    -e 's/refentrytitle>SCONS/refentrytitle>scons/' \
    -i doc/man/*.xml &&

# build documentation
(
  python bootstrap.py SConstruct doc &&
  cd src &&
  mkdir -p build/doc/man &&
  for _xml in {scons,sconsign,scons-time}; do
    docbook2man "build/doc/man/${_xml}_db.xml"
  done
)

cd src &&
python setup.py build &&

prepare_install &&

python setup.py install --prefix=/usr \
                        --skip-build \
                        --optimize=1 \
                        --standard-lib \
                        --no-install-bat \
                        --no-install-man \
                        --install-data=/usr/share &&

# install the man pages
install -Dm644 $SOURCE_DIRECTORY/build/doc/man/*.1 /usr/share/man/man1/

# clean some unneeded files
rm -f /usr/bin/scons*-
