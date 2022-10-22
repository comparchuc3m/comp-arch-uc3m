$(FINAL_ES_M6_03_OMP_LECT_PDF): $(ES_M6_03_OMP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M6_03_OMP_DIR)/slides-lect

$(FINAL_ES_M6_03_OMP_HOUT_PDF): $(ES_M6_03_OMP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M6_03_OMP_DIR)/slides-hout
