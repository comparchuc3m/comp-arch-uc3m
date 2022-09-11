$(FINAL_ES_M1_02_TRENDS_LECT_PDF): $(ES_M1_02_TRENDS_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M1_02_TRENDS_DIR)/slides-lect

$(FINAL_ES_M1_02_TRENDS_HOUT_PDF): $(ES_M1_02_TRENDS_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M1_02_TRENDS_DIR)/slides-hout
