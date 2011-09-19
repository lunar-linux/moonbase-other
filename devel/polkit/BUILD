(

  OPTS+=" --disable-man-pages "  &&
  default_build &&

# The following notes are from the ./confiugre summary;
# NOTE: The directory ${prefix}/etc/polkit-1/localauthority must be owned
#      by root and have mode 700
  chmod 700 /etc/polkit-1 

) > $C_FIFO 2>&1
