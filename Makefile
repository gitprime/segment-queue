help:
	@echo 'Usage: '
	@echo '   make clean                       clean the dists directory '
	@echo '   make build                       build the package into a wheel '
	@echo '   make release                     push to the PyPI '
	@echo ''


clean:
	rm -rf dist/*

build: clean
	python setup.py bdist_wheel sdist

release: build
	git push && git push --tags
	twine upload dist/*
