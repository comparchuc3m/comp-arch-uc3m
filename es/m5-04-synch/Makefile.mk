$(FINAL_ES_M5_04_SYNCH_LECT_PDF): $(ES_M5_04_SYNCH_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M5_04_SYNCH_DIR)/slides-lect

$(FINAL_ES_M5_04_SYNCH_HOUT_PDF): $(ES_M5_04_SYNCH_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M5_04_SYNCH_DIR)/slides-hout
