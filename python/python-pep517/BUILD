# Copied from openSUSE: 
# Remove what appears to be overly cautious flag that causes tests to require internet, both here
# and the test suites of any dependencies. Tracking at: https://github.com/pypa/pep517/issues/101
  sed -i "s/ '--ignore-installed',//" pep517/envbuild.py &&
  sed -i '/--flake8/d' pytest.ini &&

python -m build --wheel --no-isolation --skip-dependency-check &&

prepare_install &&

python -m installer --destdir=/ dist/*.whl
