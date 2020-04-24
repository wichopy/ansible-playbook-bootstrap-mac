PIP_FOUND := $(shell command -v pip 2> /dev/null)
PYTHON_PATH := $(HOME)/Library/Python/2.7/bin
PYTHON3_PATH := $(HOME)/Library/Python/3.7/bin

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

install_galaxy_roles:
	@export PATH="$(PYTHON_PATH):$$PATH"; ansible-galaxy install -r requirements.yml

install_commandlinetools:
	@export PATH="$(PYTHON_PATH):$$PATH"; ansible-playbook main.yml -i inventory --tags "command-line-tools"

install_homebrew:
	@export PATH="$(PYTHON_PATH):$$PATH"; ansible-playbook main.yml -i inventory --tags "homebrew"

install_python3:
	@export PATH="$(PYTHON_PATH):$$PATH"; ansible-playbook main.yml -i inventory --tags "python3"
	@export PATH="$(PYTHON3_PATH):$$PATH"; pip3 install --user --ignore-installed six ansible

clean:
	@export PATH="$(PYTHON3_PATH):$$PATH"; ansible-galaxy remove elliotweiser.osx-command-line-tools
	@export PATH="$(PYTHON3_PATH):$$PATH"; ansible-galaxy remove martianplatypus.python_mac
