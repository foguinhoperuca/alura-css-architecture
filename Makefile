.PHONY: dev

prepare:
	npm install -g livereload

dev:
	livereload&
	python3 -m http.server

SRCH ?= "<SEARCH_STRING>"
search-code:
	@clear
	@date
	@grep -rn "$(SRCH)" * --exclude-dir={tmp,venv,__pycache__,tests,upstream} --exclude=tags --exclude-dir=upstream --exclude-dir=img | awk '{print $1}'
	@date

build-ctags:
	@ctags -R --options=.ctags .

