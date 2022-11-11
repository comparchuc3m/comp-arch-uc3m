$(FINAL_ES_EX_M5_02_PDF): $(ES_EX_M5_02_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_EX_M5_02_DIR)/ex
