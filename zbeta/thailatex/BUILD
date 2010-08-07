(

  default_build  &&

  # From postinst at http://packages.ubuntu.com/source/lucid/thailatex
  sed -i '/thai.ldf/d' /usr/share/texmf-dist/tex/generic/babel/babel.sty  &&
  sed -i '/turkish/i\
\\DeclareOption{thai}{\\input{thai.ldf}}' /usr/share/texmf-dist/tex/generic/babel/babel.sty

) > $C_FIFO 2>&1
