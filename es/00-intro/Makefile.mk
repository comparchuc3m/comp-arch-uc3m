$(FINAL_ES_00_INTRO_LECT_PDF): $(ES_00_INTRO_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_00_INTRO_DIR)/slides-lect

$(FINAL_ES_00_INTRO_HOUT_PDF): $(ES_00_INTRO_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_00_INTRO_DIR)/slides-hout
