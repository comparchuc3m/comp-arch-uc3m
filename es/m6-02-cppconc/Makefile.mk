$(FINAL_ES_M6_02_CPPCONC_LECT_PDF): $(ES_M6_02_CPPCONC_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M6_02_CPPCONC_DIR)/slides-lect

$(FINAL_ES_M6_02_CPPCONC_HOUT_PDF): $(ES_M6_02_CPPCONC_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M6_02_CPPCONC_DIR)/slides-hout
