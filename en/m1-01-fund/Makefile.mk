$(FINAL_EN_M1_01_FUND_LECT_PDF): $(EN_M1_01_FUND_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M1_01_FUND_DIR)/slides-lect

$(FINAL_EN_M1_01_FUND_HOUT_PDF): $(EN_M1_01_FUND_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M1_01_FUND_DIR)/slides-hout
