$(FINAL_EN_M3_02_CACHE_LECT_PDF): $(EN_M3_02_CACHE_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M3_02_CACHE_DIR)/slides-lect

$(FINAL_EN_M3_02_CACHE_HOUT_PDF): $(EN_M3_02_CACHE_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M3_02_CACHE_DIR)/slides-hout
