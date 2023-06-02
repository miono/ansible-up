ansible-up:
	ansible-playbook --limit "$(shell hostname --short)" --diff ./install-laptop.yml

.PHONY: ansible-up
