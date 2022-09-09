$(FINAL_EN_M1_02_TRENDS_LECT_PDF): $(EN_M1_02_TRENDS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M1_02_TRENDS_DIR)/slides-lect

$(FINAL_EN_M1_02_TRENDS_HOUT_PDF): $(EN_M1_02_TRENDS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M1_02_TRENDS_DIR)/slides-hout
