$(FINAL_ES_M2_01_EX_PDF): $(ES_M2_01_EX_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_M2_01_EX_DIR)/ex
