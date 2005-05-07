no_export_symbol()  {
  sedit "s/EXPORT_SYMBOL/\/\/ EXPORT_SYMBOL/" api/cryptoapi.c
}


if  module_installed  linux;  then
  case  "`installed_version  linux`"  in
    2.4.13)  no_export_symbol  ;;
    2.4.14)  no_export_symbol  ;;
    2.4.15)  no_export_symbol  ;;
    2.4.16)  no_export_symbol  ;;
    2.4.17)  no_export_symbol  ;;
    2.4.18)  no_export_symbol  ;;
    2.4.19)  no_export_symbol  ;;
    2.4.20)  no_export_symbol  ;;
    2.4.21)  no_export_symbol  ;;
    2.4.22)  no_export_symbol  ;;
    2.4.23)  no_export_symbol  ;;
    2.4.24)  no_export_symbol  ;;
  esac
fi


(

  aclocal
  sedit  "s/-O2/$CFLAGS/"  configure

  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install             &&
  depmod

) > $C_FIFO 2>&1
