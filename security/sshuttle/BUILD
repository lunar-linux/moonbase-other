export PYTHONDONTWRITEBYTECODE=1 &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl &&


install -d /etc/sshuttle &&
install -m644 "$SCRIPT_DIRECTORY"/{tunnel.conf,prefixes.conf} /etc/sshuttle/
