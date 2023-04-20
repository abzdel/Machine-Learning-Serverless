install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	black tests/*.py
	black setup/*.ipynb

lint:
	pylint --disable=R,C tests/*.py

test:
	pytest tests/test-invoke.py

all: install test format