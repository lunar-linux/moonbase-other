( 
  
  cd $SOURCE_DIRECTORY/wxPython  &&
  prepare_install  &&
  python setup.py install WXPORT=gtk2 UNICODE=1 \
        BUILD_OGL=0 BUILD_GLCANVAS=0 \
        BUILD_STC=0 BUILD_XRC=0 \
        BUILD_GIZMOS=0 \
        WX_CONFIG=/usr/bin/wx-config

) > $C_FIFO 2>&1
