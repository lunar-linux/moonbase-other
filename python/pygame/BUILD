(

 yes | python config.py &&

 #linux removed v4l1 support -> camera is broken
 #see e.g. http://lists.fedoraproject.org/pipermail/devel/2011-February/148519.html
 sedit 's/^\(_camera.*\)/#\1/' Setup &&

 python setup.py build  &&
 prepare_install  &&
 python setup.py install

) > $C_FIFO 2>&1
