CWD = $(realpath $(dir $(firstword $(MAKEFILE_LIST))))
VENV=.venv

.DEFAULT: null
.PHONY: null
null:
	@echo No default target.

.PHONY: venv
venv: ${VENV}

${VENV}:
	@python3 -mvenv ${@}
	@${VENV}/bin/pip install --upgrade pip setuptools wheel
	@${VENV}/bin/pip install --upgrade --requirement requirements.txt

.PHONY: clean
clean:
	git clean -xfd

