$(FINAL_ES_M5_01_SHMEM_LECT_PDF): $(ES_M5_01_SHMEM_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-lect $(ES_M5_01_SHMEM_DIR)/slides-lect

$(FINAL_ES_M5_01_SHMEM_HOUT_PDF): $(ES_M5_01_SHMEM_PARTS) $(ES_CONFIG_INPUT)
	$(LATEXMK) -jobname=$(subst /,-,$(<D))-hout $(ES_M5_01_SHMEM_DIR)/slides-hout
