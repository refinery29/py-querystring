PACKAGE_DIR=querystring
TEST_DIR=tests
DEV_DEPENDENCIES=pep8 nose
SETUP_PY=python setup.py

all: install

.PHONY: install
install:
	$(SETUP_PY) develop
	pip install $(DEV_DEPENDENCIES)

.PHONY: lint
lint:
	pep8 $(PACKAGE_DIR) $(TEST_DIR)

.PHONY: test
test:
	$(SETUP_PY) nosetests
