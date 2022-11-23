$(FINAL_EN_M7_01_DLP_LECT_PDF): $(EN_M7_01_DLP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M7_01_DLP_DIR)/slides-lect

$(FINAL_EN_M7_01_DLP_HOUT_PDF): $(EN_M7_01_DLP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M7_01_DLP_DIR)/slides-hout
