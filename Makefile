.PHONY: dev

prepare:
	npm install -g livereload

dev:
	livereload&
	python3 -m http.server

search-code:
	@clear
	@date
	@grep -rn "$(SRCH)" * --exclude-dir={tmp,venv,__pycache__,tests} --exclude=tags | awk '{print $1}'
	@date

build-ctags:
	@ctags -R --options=.ctags .

