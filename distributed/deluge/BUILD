(
   GCC_VERSION_MAJOR=$(lvu version gcc | cut -d. -f1)
   GCC_VERSION_MINOR=$(lvu version gcc | cut -d. -f2)

   THREAD_LIB=boost_thread-gcc${GCC_VERSION_MAJOR}${GCC_VERSION_MINOR}
   FILESYS_LIB=boost_filesystem-gcc${GCC_VERSION_MAJOR}${GCC_VERSION_MINOR}
   DATETIME_LIB=boost_date_time-gcc${GCC_VERSION_MAJOR}${GCC_VERSION_MINOR}

   sedit "s/boost_thread/$THREAD_LIB/g" setup.py      &&
   sedit "s/boost_filesystem/$FILESYS_LIB/g" setup.py &&
   sedit "s/boost_date_time/$DATETIME_LIB/g" setup.py &&

   prepare_install &&
   python setup.py install

) > $C_FIFO 2>&1
