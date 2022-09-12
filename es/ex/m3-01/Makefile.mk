$(FINAL_ES_EX_M3_01_PDF): $(ES_EX_M3_01_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_EX_M3_01_DIR)/ex
