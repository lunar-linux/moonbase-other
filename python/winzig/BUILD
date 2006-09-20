(

 # this sedit is a temp hack for Python2.5. Remove it later when winzig is updated to Python2.5.
 sedit "s/gtk.mainquit/gtk.main_quit/" wutil.py &&

 prepare_install  &&
 PVER=`lsh installed_version Python`
 mkdir -p /usr/lib/python$PVER/site-packages/winzig/ &&
 install -p -m 755 *.py /usr/lib/python$PVER/site-packages/winzig/ &&
 chmod 755 /usr/lib/python$PVER/site-packages/winzig/*.py &&
 mkdir -p $DOCUMENT_DIRECTORY/winzig/Data &&
 gather_docs 00changes 00readme &&
 install -p -m 644 Data/*.db $DOCUMENT_DIRECTORY/winzig/Data/ &&
 ln -sf /usr/lib/python$PVER/site-packages/winzig/winzig.py /usr/bin/winzig

) > $C_FIFO 2>&1

