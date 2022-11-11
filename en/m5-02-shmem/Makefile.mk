$(FINAL_EN_M5_02_SHMEM_LECT_PDF): $(EN_M5_02_SHMEM_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(EN_M5_02_SHMEM_DIR)/slides-lect

$(FINAL_EN_M5_02_SHMEM_HOUT_PDF): $(EN_M5_02_SHMEM_PARTS) $(EN_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(EN_M5_02_SHMEM_DIR)/slides-hout
