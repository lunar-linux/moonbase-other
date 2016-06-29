# get rid of the sedit when gcalcli's author fixes it
sedit 's/from oauth2client.tools import run$/&_flow as run/' gcalcli

python setup.py build_ext -i  &&
prepare_install               &&
python setup.py install --root=/
