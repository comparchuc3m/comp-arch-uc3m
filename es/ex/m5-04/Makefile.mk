$(FINAL_ES_EX_M5_04_PDF): $(ES_EX_M5_04_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_EX_M5_04_DIR)/ex
