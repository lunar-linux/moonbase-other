(

  sedit "s:PYTHON_SITE=\`.*$:PYTHON_SITE=/usr/lib/python$(installed_version Python | cut -d. -f1,2)/site-packages:" configure &&
  sedit 's:/usr/local:/usr:g' configure cgi/cgi.c imd/imdm.py scripts/document.py
  default_build

) > $C_FIFO 2>&1
