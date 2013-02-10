mkdir  -p  /var/spool/atjobs                                   &&
sedit "s/\$(prefix)\/doc/\$(prefix)\/share\/doc/" Makefile.in  &&

default_build                                                  &&

if [[ ! -e  /etc/at.deny ]]; then
  cp  at.deny   /etc
fi
