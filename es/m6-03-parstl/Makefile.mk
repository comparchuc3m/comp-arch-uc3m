$(FINAL_ES_M6_03_PARSTL_LECT_PDF): $(ES_M6_03_PARSTL_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M6_03_PARSTL_DIR)/slides-lect

$(FINAL_ES_M6_03_PARSTL_HOUT_PDF): $(ES_M6_03_PARSTL_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M6_03_PARSTL_DIR)/slides-hout
