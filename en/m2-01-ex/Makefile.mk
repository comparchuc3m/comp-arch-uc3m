$(FINAL_EN_M2_01_EX_PDF): $(EN_M2_01_EX_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_M2_01_EX_DIR)/ex
