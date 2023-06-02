install:
	ansible-playbook --limit "$(shell hostname --short)" --diff ./install-laptop.yaml

.PHONY: install
