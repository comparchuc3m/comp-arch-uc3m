$(FINAL_EN_M1_02_EX_PDF): $(EN_M1_02_EX_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(EN_M1_02_EX_DIR)/ex
