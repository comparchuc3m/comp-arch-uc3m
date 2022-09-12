$(FINAL_EN_M2_02_PERF_LECT_PDF): $(EN_M2_02_PERF_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M2_02_PERF_DIR)/slides-lect

$(FINAL_EN_M2_02_PERF_HOUT_PDF): $(EN_M2_02_PERF_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M2_02_PERF_DIR)/slides-hout
