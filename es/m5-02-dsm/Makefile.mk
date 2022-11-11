$(FINAL_ES_M5_02_DSM_LECT_PDF): $(ES_M5_02_DSM_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M5_02_DSM_DIR)/slides-lect

$(FINAL_ES_M5_02_DSM_HOUT_PDF): $(ES_M5_02_DSM_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M5_02_DSM_DIR)/slides-hout
