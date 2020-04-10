ansible-playbook-bootstrap-mac
------------------------------
[![Build Status][badge-travis]][link-travis]
[![MIT Licensed][badge-license]][link-license]

This playbook will install the essential tools most developers need to get started writing code on a Mac: OS X Command Line Tools, Homebrew and Python 3.

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
First, `make install` checks if pip is configured. If not, it downloads the installer from the official repository.

Next, the script installs ansible as a Python module.

After that, the following roles are installed from ansible-galaxy:
* [elliotweiser.osx-command-line-tools][link-galaxy-clt]
* [martianplatypus.python_mac][link-galaxy-python3]

Once the playbook requirements are met, the script will proceed to install OS X Command Line Tools, Homebrew and Python 3 on your Mac.

Each step can be executed separately. See the Makefile options for more details.
___
This playbook implementation was heavily inspired by mpereira's [macbook-playbook][link-mpereira].

 [badge-license]: https://img.shields.io/github/license/martianplatypus/ansible-playbook-bootstrap-mac
 [badge-travis]: https://img.shields.io/travis/com/martianplatypus/ansible-playbook-bootstrap-mac
 [link-makefile]: https://github.com/martianplatypus/ansible-playbook-bootstrap-mac/blob/master/Makefile
 [link-mpereira]: [https://github.com/mpereira/macbook-playbook]
 [link-galaxy-clt]: https://galaxy.ansible.com/elliotweiser/osx-command-line-tools
 [link-galaxy-python3]: https://galaxy.ansible.com/martianplatypus/python_mac
 [link-license]: https://github.com/martianplatypus/ansible-playbook-bootstrap-mac/blob/master/LICENSE
 [link-travis]: https://travis-ci.com/github/martianplatypus/ansible-playbook-bootstrap-mac/
