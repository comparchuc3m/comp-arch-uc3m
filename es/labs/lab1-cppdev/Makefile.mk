$(FINAL_ES_LAB1_CPPDEV_PDF): $(ES_LAB1_CPPDEV_PARTS) $(CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(ES_LAB1_CPPDEV_DIR)/ex
