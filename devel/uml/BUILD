cd  $SOURCE_DIRECTORY/linux

while  
  case  $CONFIG_KERNEL in
    y|Y)  make  $CONFIG_METHOD ARCH=um
          if  query  "Repeat $CONFIG_METHOD?  "  n
          then  CONFIG_KERNEL=y
          else  CONFIG_KERNEL=n
          fi     ;;
      *)  false  ;;
  esac
do
  true
done


(

# yes  n  |  make  oldconfig ARCH=um
# cp  .config  $CONFIG_CACHE
  make dep ARCH=um           &&
  make clean ARCH=um         &&
  make linux ARCH=um         &&
  make modules ARCH=um       &&
  prepare_install            &&
  make modules_install ARCH=um &&
  cd $SOURCE_DIRECTORY/tools &&
  make all                   &&
  make install DESTDIR=/     &&
  cp -p $SOURCE_DIRECTORY/linux/linux /usr/bin/uml
  
) > $C_FIFO 2>&1
