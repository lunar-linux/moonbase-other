
( 
  # o dear, nobody noticed this before ...
  message "${MESSAGE_COLOR}Fixing include paths...${DEFAULT_COLOR}" &&
  sedit 's?xfce4/lib?lib?' panel-plugin/*.c			&&
  
   ./configure  --build=$BUILD					\
                --prefix=/opt/lunar/xfce/4.0			\
                --disable-static				\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
