$(FINAL_ES_M3_01_CACHE_LECT_PDF): $(ES_M3_01_CACHE_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M3_01_CACHE_DIR)/slides-lect

$(FINAL_ES_M3_01_CACHE_HOUT_PDF): $(ES_M3_01_CACHE_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M3_01_CACHE_DIR)/slides-hout
