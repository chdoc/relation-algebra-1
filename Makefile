all: Makefile.coq
	+make -f Makefile.coq all

clean: Makefile.coq
	+make -f Makefile.coq clean
	rm -f Makefile.coq

cleanall: Makefile.coq
	+make -f Makefile.coq cleanall
	rm -f Makefile.coq

Makefile.coq: Make
	$(COQBIN)coq_makefile -f _CoqProject -o Makefile.coq

Make: ;

%: Makefile.coq
	+make -f Makefile.coq $@

.PHONY: all clean
