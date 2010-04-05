(

  if in_depends $MODULE PyQt4; then
     . /etc/profile.d/qt4.rc
  fi &&

  if [[ "$PP" == "y" ]] ; then
    OPTS="$OPTS --disable-pp-build"
  fi &&

  if [[ "$FAX" == "n" ]] ; then
    OPTS="$OPTS --disable-fax-build"
  fi &&

  default_config &&

# To fix the /var/log/meesages warning SYSFS will be removed in future udev versions.
  sedit "s:SYSFS:ATTR:g" data/rules/56-hpmud_support.rules data/rules/55-hpmud.rules &&

  default_make 

) > $C_FIFO 2>&1
