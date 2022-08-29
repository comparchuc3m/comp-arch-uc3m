$(FINAL_ES_M1_01_FUND_LECT_PDF): $(ES_M1_01_FUND_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M1_01_FUND_DIR)/slides-lect

$(FINAL_ES_M1_01_FUND_HOUT_PDF): $(ES_M1_01_FUND_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M1_01_FUND_DIR)/slides-hout
