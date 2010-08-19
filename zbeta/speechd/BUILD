(

  # Add support for flite
  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  sedit "s:/usr/local:/usr:" Makefile  &&

  # Use flite by default
  sedit "s:festival:flite:" speechdrc  &&

  default_build  &&
  gather_docs README AUTHORS TODO speechio.faq

) > $C_FIFO 2>&1
