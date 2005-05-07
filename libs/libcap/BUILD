(
  export PYTHON=1 PYTHONMODDIR=/usr/lib/python2.3/site-packages
  sed -i 's|WARNINGS=-ansi|WARNINGS=|' Make.Rules &&
  default_make
) > $C_FIFO 2>&1
