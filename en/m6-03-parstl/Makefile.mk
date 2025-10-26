$(FINAL_EN_M6_03_PARSTL_LECT_PDF): $(EN_M6_03_PARSTL_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M6_03_PARSTL_DIR)/slides-lect

$(FINAL_EN_M6_03_PARSTL_HOUT_PDF): $(EN_M6_03_PARSTL_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M6_03_PARSTL_DIR)/slides-hout
