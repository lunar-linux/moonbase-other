python setup.py build &&

prepare_install &&

#WARNING: Running pip as the 'root' user can result in broken permissions and conflicting
#So lets avoid that.
RUAMEL_NO_PIP_INSTALL_CHECK=1 python setup.py install --root=/ --optimize=1

#LC_CTYPE=en_US.UTF-8 pip install . 
