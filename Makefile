PIP_FOUND := $(shell command -v pip 2> /dev/null)
PYTHON_PATH := $(HOME)/Library/Python/2.7/bin

.PHONY: \
	install \
	install_pip \
	install_ansible \
	install_galaxy_roles \
	install_python3 \
	clean

install: \
	install_pip \
	install_ansible \
	install_galaxy_roles \
	install_commandlinetools \
	install_homebrew install_python3

install_pip:
ifndef PIP_FOUND
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python get-pip.py --user --force-reinstall
	rm -f get-pip.py
endif

install_ansible:
	@export PATH="$(PYTHON_PATH):$$PATH"; pip install --user --ignore-installed six ansible

install_commandlinetools:
	ansible-galaxy install elliotweiser.osx-command-line-tools
	ansible-playbook main.yml -i inventory --tags "command-line-tools"

install_homebrew:
	ansible-playbook main.yml -i inventory --tags "homebrew"

clean:
	ansible-galaxy remove elliotweiser.osx-command-line-tools
