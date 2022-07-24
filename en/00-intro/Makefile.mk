$(FINAL_EN_00_INTRO_LECT_PDF): $(EN_00_INTRO_PARTS) $(CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_00_INTRO_DIR)/slides-lect

$(FINAL_EN_00_INTRO_HOUT_PDF): $(EN_00_INTRO_PARTS) $(CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_00_INTRO_DIR)/slides-hout
