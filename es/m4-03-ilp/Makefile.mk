$(FINAL_ES_M4_03_ILP_LECT_PDF): $(ES_M4_03_ILP_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M4_03_ILP_DIR)/slides-lect

$(FINAL_ES_M4_03_ILP_HOUT_PDF): $(ES_M4_03_ILP_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M4_03_ILP_DIR)/slides-hout
