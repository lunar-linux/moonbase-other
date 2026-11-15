OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_SHARED_LIBS=ON -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -Wno-dev"

default_cmake_build

devoke_installwatch &&
cd python &&

python -m build --wheel &&

prepare_install &&
python -m installer --destdir=/ dist/*.whl
