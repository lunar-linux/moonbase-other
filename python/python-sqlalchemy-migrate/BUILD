sedit 's:description-file:description_file:' setup.cfg &&
sedit 's:author-email:author_email:' setup.cfg &&
sedit 's:home-page:home_page:' setup.cfg &&

python -m build --wheel --no-isolation &&

prepare_install &&
python -m installer dist/*.whl
