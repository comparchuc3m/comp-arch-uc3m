$(FINAL_EN_M6_03_OMP_LECT_PDF): $(EN_M6_03_OMP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M6_03_OMP_DIR)/slides-lect

$(FINAL_EN_M6_03_OMP_HOUT_PDF): $(EN_M6_03_OMP_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M6_03_OMP_DIR)/slides-hout
