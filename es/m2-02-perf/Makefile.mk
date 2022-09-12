$(FINAL_ES_M2_02_PERF_LECT_PDF): $(ES_M2_02_PERF_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M2_02_PERF_DIR)/slides-lect

$(FINAL_ES_M2_02_PERF_HOUT_PDF): $(ES_M2_02_PERF_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M2_02_PERF_DIR)/slides-hout
