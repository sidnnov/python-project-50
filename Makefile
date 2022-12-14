install:
	poetry install

gendiff:
	poetry run gendiff -h

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

reinstall:
	pip install --user --force-reinstall dist/*.whl

selfcheck:
	poetry check

lint: 
	poetry run flake8 gendiff

pytest:
	poetry run pytest

check: selfcheck pytest lint 

test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml
