$(FINAL_ES_EX_M3_02_PDF): $(ES_EX_M3_02_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_EX_M3_02_DIR)/ex
