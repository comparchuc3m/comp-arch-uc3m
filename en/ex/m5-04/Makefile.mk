$(FINAL_EN_EX_M5_04_PDF): $(EN_EX_M5_04_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_EX_M5_04_DIR)/ex
