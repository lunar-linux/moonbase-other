(

  # Fix "quick note" crash:  global name 'page' is not defined
  # From http://koji.fedoraproject.org/koji/buildinfo?buildID=232194
  sedit "s:ui.present(page) # also works with proxy:ui.present(path) # also works with proxy:1" zim/plugins/quicknote.py &&

  prepare_install &&

  ./setup.py install

) > $C_FIFO 2>&1

