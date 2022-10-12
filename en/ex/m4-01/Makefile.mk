$(FINAL_EN_EX_M4_01_PDF): $(EN_EX_M4_01_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_EX_M4_01_DIR)/ex
