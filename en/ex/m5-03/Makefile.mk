$(FINAL_EN_EX_M5_03_PDF): $(EN_EX_M5_03_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_EX_M5_03_DIR)/ex
