$(FINAL_ES_M1_02_EX_PDF): $(ES_M1_02_EX_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_M1_02_EX_DIR)/ex
