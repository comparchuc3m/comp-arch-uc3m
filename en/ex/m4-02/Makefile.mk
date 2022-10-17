$(FINAL_EN_EX_M4_02_PDF): $(EN_EX_M4_02_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_EX_M4_02_DIR)/ex
