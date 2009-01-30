(

  default_config &&

  # Disable docs from building
  echo -e "all:\ninstall:\n" > docs/Makefile &&

  default_make &&

  gather_docs TIPS
  
) > $C_FIFO 2>&1
