$(FINAL_ES_M2_01_TRENDS_LECT_PDF): $(ES_M2_01_TRENDS_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M2_01_TRENDS_DIR)/slides-lect

$(FINAL_ES_M2_01_TRENDS_HOUT_PDF): $(ES_M2_01_TRENDS_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M2_01_TRENDS_DIR)/slides-hout
