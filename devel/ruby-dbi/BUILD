(

  export PATH=/usr/bin:$PATH 
  ruby setup.rb config --with=dbi,dbd_proxy,dbd_mysql,dbd_interbase,dbd_oracle,dbd_db2,dbd_ado,dbd_pg,dbd_odbc,dbd_sqlrelay &&
  ruby setup.rb setup   &&
  prepare_install       &&
  ruby setup.rb install 

) > $C_FIFO 2>&1
