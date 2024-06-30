.PHONY: push help

push:
	git push origin $(branch)

# target: help - Mostra os targets que sao executaveis
help:
	@egrep "^# target:" [Mm]akefile

# EOF
