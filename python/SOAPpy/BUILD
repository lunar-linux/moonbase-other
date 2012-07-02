(

 sedit "s:from __future__ import nested_scopes::g" SOAPpy/Client.py SOAPpy/Server.py SOAPpy/Types.py &&
 sed -i "1i from __future__ import nested_scopes" SOAPpy/Client.py SOAPpy/Server.py SOAPpy/Types.py &&

 python setup.py build
 prepare_install        &&
 python setup.py install
 
) > $C_FIFO 2>&1
