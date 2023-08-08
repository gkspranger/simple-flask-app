.DEFAULT_GOAL := help

workspace = ~/.fiddle/simple-flask-app

help:
	@echo "make r				remove local venv"
	@echo "make c				create venv and pip install modules"
	@echo "make f				format code"
	@echo "make l				lint code"
	@echo "make fl				format and lint code"
	@echo "make x				execute app"

r:
	@rm -fr $(workspace)/venv

c:
	@mkdir -p $(workspace)
	@python -m venv $(workspace)/venv
	@$(workspace)/venv/bin/python -m pip install --upgrade pip
	@$(workspace)/venv/bin/pip install -r requirements.txt

f:
	@$(workspace)/venv/bin/black app/

l:
	@$(workspace)/venv/bin/pylint app/

fl: f l

x:
	@$(workspace)/venv/bin/python app/