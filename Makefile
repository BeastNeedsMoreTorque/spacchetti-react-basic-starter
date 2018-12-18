default: npm-deps purs-deps purs-build parcel-build

nix:
	nix-shell --run make

start:
	./node_modules/.bin/parcel src/index.html

npm-deps:
	npm install

purs-deps:
	./install-deps.nix

psc-package2nix:
	psc-package2nix

purs-build:
	psc-package build

parcel-build:
	./node_modules/.bin/parcel build src/index.html
