install:
	ansible-playbook --limit "$(shell hostname --short)" --diff ./install-laptop.yml

.PHONY: install
