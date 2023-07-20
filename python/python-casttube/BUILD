python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl &&

install -Dm644 $SCRIPT_DIRECTORY/get_screen_id.py /usr/bin/get_screen_id.py
