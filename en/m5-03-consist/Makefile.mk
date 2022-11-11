$(FINAL_EN_M5_03_CONSIST_LECT_PDF): $(EN_M5_03_CONSIST_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M5_03_CONSIST_DIR)/slides-lect

$(FINAL_EN_M5_03_CONSIST_HOUT_PDF): $(EN_M5_03_CONSIST_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M5_03_CONSIST_DIR)/slides-hout
