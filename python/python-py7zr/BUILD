sed -i -E '/^requires /s#([a-z])[\[>][^"]*"#\1"#g' pyproject.toml &&
sed -i -E '/setuptools/s#>.*##' setup.cfg &&

python -m build --wheel --skip-dependency-check --no-isolation &&
prepare_install &&

python -m installer -d / dist/*.whl
