ansible-playbook-bootstrap-mac
------------------------------
[![Build Status][badge-travis]][link-travis]
[![MIT Licensed][badge-license]][link-license]

Prepare your Mac to be managed by Ansible. This Playbook will install the essential tools to get started using your mac for development: OS X Command Line Tools, Homebrew and Python 3.

Getting started
------------

1. Clone the repository
```
git clone https://github.com/martianplatypus/ansible-playbook-bootstrap-mac.git
```
2. run make install
```
make install
```

#### Behind the scenes
First, `make install` will check if pip is required. If so, it downloads the installer from the official repository. Once pip is setup, the script will continue to install ansible. Next, the script will install roles two roles from ansible-galaxy: [elliotweiser.osx-command-line-tools][link-galaxy-clt] and [martianplatypus.python_mac][link-galaxy-python3]. After installing these roles locally, OS X Command Line Tools, Homebrew and Python 3 will be installed on your Mac.

 [badge-license]: https://img.shields.io/github/license/martianplatypus/ansible-playbook-bootstrap-mac
 [badge-travis]: https://img.shields.io/travis/com/martianplatypus/ansible-playbook-bootstrap-mac
 [link-galaxy-clt]: https://galaxy.ansible.com/elliotweiser/osx-command-line-tools
 [link-galaxy-python3]: https://galaxy.ansible.com/martianplatypus/python_mac
 [link-license]: https://github.com/martianplatypus/ansible-playbook-bootstrap-mac/blob/master/LICENSE
 [link-travis]: https://travis-ci.com/github/martianplatypus/ansible-playbook-bootstrap-mac/
