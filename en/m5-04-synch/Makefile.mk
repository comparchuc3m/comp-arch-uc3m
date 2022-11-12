$(FINAL_EN_M5_04_SYNCH_LECT_PDF): $(EN_M5_04_SYNCH_PARTS) $(CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M5_04_SYNCH_DIR)/slides-lect

$(FINAL_EN_M5_04_SYNCH_HOUT_PDF): $(EN_M5_04_SYNCH_PARTS) $(CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M5_04_SYNCH_DIR)/slides-hout
