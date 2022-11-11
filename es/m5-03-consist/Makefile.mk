$(FINAL_ES_M5_03_CONSIST_LECT_PDF): $(ES_M5_03_CONSIST_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M5_03_CONSIST_DIR)/slides-lect

$(FINAL_ES_M5_03_CONSIST_HOUT_PDF): $(ES_M5_03_CONSIST_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M5_03_CONSIST_DIR)/slides-hout
