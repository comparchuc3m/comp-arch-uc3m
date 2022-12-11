$(FINAL_ES_M7_01_DLP_LECT_PDF): $(ES_M7_01_DLP_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M7_01_DLP_DIR)/slides-lect

$(FINAL_ES_M7_01_DLP_HOUT_PDF): $(ES_M7_01_DLP_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M7_01_DLP_DIR)/slides-hout
