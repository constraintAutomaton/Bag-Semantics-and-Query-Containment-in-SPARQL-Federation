SOURCE = main.tex references.bib acronyms.tex section/*.tex proofs/*.tex Makefile

PROOFS = cq_join_multiplicity bag_federation_reduction \
         nested_service_flattening federated_query_condition
PROOF_PDF = $(addsuffix .pdf,$(PROOFS))
WATCH_PROOFS = $(addprefix watch-,$(PROOFS))

main.pdf: $(SOURCE)
	latexmk -pdf -shell-escape main.tex

watch:
	latexmk -pdf -pvc -shell-escape main.tex

proofs: $(PROOF_PDF)

all: main.pdf proofs

define PROOF_RULES
$(1).pdf: proofs/$(1).tex main.aux $$(SOURCE)
	cd proofs && latexmk -pdf -shell-escape $(1).tex
	cp proofs/$(1).pdf $(1).pdf

watch-$(1):
	cd proofs && latexmk -pdf -pvc -shell-escape $(1).tex
endef

$(foreach n,$(PROOFS),$(eval $(call PROOF_RULES,$(n))))

clean:
	rm -f *.log *.bcf-SAVE-ERROR *.xmpi *.xmpdata *.abs *.aux main.pdf \
	      *.out *.text.bbl main.*.blg *.blg *.bbl *.fls *.fdb_latexmk \
	      main.log *.synctex.gz section/*.aux *.bcf *-blx.bib *.run.xml \
	      svg-inkscape/* $(PROOF_PDF) proofs/*.aux proofs/*.fls \
	      proofs/*.fdb_latexmk proofs/*.log

.PHONY: all clean watch proofs $(WATCH_PROOFS)
