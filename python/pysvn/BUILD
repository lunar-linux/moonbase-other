(
  # determine the current major Python version
  python_major=`installed_version Python | cut -d. -f1-2`
  
  # determine the Python site-packages path
  pysvn_dir="/usr/lib/python${python_major}/site-packages/pysvn"

  pushd Source &&
  python setup.py configure &&
  make &&

  prepare_install &&

  test -d $pysvn_dir || mkdir $pysvn_dir &&
  cp pysvn/__init__.py $pysvn_dir &&
  cp pysvn/_pysvn*.so $pysvn_dir

) > $C_FIFO 2>&1
