EMACS ?= emacs
CASK ?= cask

all: test

test: clean-elc
	${MAKE} unit
	${MAKE} compile
	${MAKE} unit
	${MAKE} clean-elc

unit:
	${CASK} exec ert-runner

lint:
	${CASK} exec ${EMACS} -Q -batch --eval="(elint-file \"stochastic.el\")"

docs:
	${CASK} exec ${EMACS} -Q --script bin/docs.el

compile:
	${CASK} exec ${EMACS} -Q -batch -f batch-byte-compile stochastic.el

clean-elc:
	rm -f stochastic.elc

.PHONY:	all test docs unit
