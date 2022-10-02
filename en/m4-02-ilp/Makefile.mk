$(FINAL_EN_M4_02_ILP_LECT_PDF): $(EN_M4_02_ILP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M4_02_ILP_DIR)/slides-lect

$(FINAL_EN_M4_02_ILP_HOUT_PDF): $(EN_M4_02_ILP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M4_02_ILP_DIR)/slides-hout
