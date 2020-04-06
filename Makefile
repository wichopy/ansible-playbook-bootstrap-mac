PIP_FOUND := $(shell command -v pip 2> /dev/null)

.PHONY: \
	install_pip
	install_ansible
	clean

install_pip:
ifndef PIP_FOUND
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python get-pip.py --user --force-reinstall
	rm -f get-pip.py
endif

install_ansible:
	pip install --user --ignore-installed six ansible

install_commandlinetools:
	ansible-playbook main.yml -i inventory --tags "command-line-tools"

install_homebrew:
	ansible-playbook main.yml -i inventory --tags "homebrew"

clean:
	ansible-galaxy remove elliotweiser.osx-command-line-tools
