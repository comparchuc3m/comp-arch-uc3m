$(FINAL_EN_M6_04_ATOMICS_LECT_PDF): $(EN_M6_04_ATOMICS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M6_04_ATOMICS_DIR)/slides-lect

$(FINAL_EN_M6_04_ATOMICS_HOUT_PDF): $(EN_M6_04_ATOMICS_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M6_04_ATOMICS_DIR)/slides-hout
