$(FINAL_ES_M6_04_ATOMICS_LECT_PDF): $(ES_M6_04_ATOMICS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M6_04_ATOMICS_DIR)/slides-lect

$(FINAL_ES_M6_04_ATOMICS_HOUT_PDF): $(ES_M6_04_ATOMICS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M6_04_ATOMICS_DIR)/slides-hout
