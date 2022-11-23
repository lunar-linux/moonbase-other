#https://github.com/ansible/ansible/pull/79399
sed -e 's/resolvelib.*/resolvelib/' -i requirements.txt &&
python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl

