$(FINAL_EN_M6_02_CPPCONC_LECT_PDF): $(EN_M6_02_CPPCONC_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M6_02_CPPCONC_DIR)/slides-lect

$(FINAL_EN_M6_02_CPPCONC_HOUT_PDF): $(EN_M6_02_CPPCONC_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M6_02_CPPCONC_DIR)/slides-hout
