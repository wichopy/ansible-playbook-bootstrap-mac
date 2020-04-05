PIP_FOUND := $(shell command -v pip 2> /dev/null)

.PHONY: \
	install_pip

install_pip:
ifndef PIP_FOUND
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python get-pip.py --user --force-reinstall
	rm -f get-pip.py
endif
