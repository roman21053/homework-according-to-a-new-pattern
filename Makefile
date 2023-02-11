.PHONY: all \
		setup \
		unittest \
		pytest \
		run

venv/bin/activate: ## alias for virtual environment
	python3 -m venv .venv

setup: ## project setup
	. .venv/bin/activate; pip install --upgrade pip
	. .venv/bin/activate; pip install wheel setuptools
	. .venv/bin/activate; pip install -r requirements.txt

unittest: ## Check code quality
	. .venv/bin/activate; python -m unittest

pytest: ## Start testing with pytest
	. .venv/bin/activate; pytest tests_pytest.py

run: ## Run
	. .venv/bin/activate; python main.python main.py