EN_CONFIG_INPUT=\
config/*.tex \
config/en/*.tex \
en/license-cc.tex \

#include definitions for slides
include en/00-intro/Makefile.def
include en/m1-01-fund/Makefile.def
include en/m2-01-trends/Makefile.def
include en/m2-02-perf/Makefile.def
include en/m3-01-cache/Makefile.def
include en/m3-02-cache/Makefile.def
include en/m4-01-ilp/Makefile.def
include en/m4-02-ilp/Makefile.def
include en/m4-03-ilp/Makefile.def
include en/m5-01-shmem/Makefile.def
include en/m5-02-dsm/Makefile.def
include en/m5-03-consist/Makefile.def
include en/m5-04-synch/Makefile.def
include en/m6-01-cppintro/Makefile.def
include en/m6-02-cppconc/Makefile.def
include en/m6-03-omp/Makefile.def
include en/m6-04-atomics/Makefile.def

#include definitions for exercises
include en/ex/Makefile.def

#include definitions for labs
include en/labs/Makefile.def

#Project statements
include en/proj/Makefile.def

ALL_EN_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_EN_FINAL_PDF) \
$(ALL_INTRO_EN_FINAL_PDF) \
$(ALL_EX_EN_FINAL_PDF) \
$(ALL_LABS_EN_FINAL_PDF) \
$(ALL_PROJ_EN_FINAL_PDF) \

allen:	$(ALL_EN_FINAL_PDF)

#include rules for slides
include $(EN_00_INTRO_DIR)/Makefile.mk
include $(EN_M1_01_FUND_DIR)/Makefile.mk
include $(EN_M2_01_TRENDS_DIR)/Makefile.mk
include $(EN_M2_02_PERF_DIR)/Makefile.mk
include $(EN_M3_01_CACHE_DIR)/Makefile.mk
include $(EN_M3_02_CACHE_DIR)/Makefile.mk
include $(EN_M4_01_ILP_DIR)/Makefile.mk
include $(EN_M4_02_ILP_DIR)/Makefile.mk
include $(EN_M4_03_ILP_DIR)/Makefile.mk
include $(EN_M5_01_SHMEM_DIR)/Makefile.mk
include $(EN_M5_02_DSM_DIR)/Makefile.mk
include $(EN_M5_03_CONSIST_DIR)/Makefile.mk
include $(EN_M5_04_SYNCH_DIR)/Makefile.mk
include $(EN_M6_01_CPPINTRO_DIR)/Makefile.mk
include $(EN_M6_02_CPPCONC_DIR)/Makefile.mk
include $(EN_M6_03_OMP_DIR)/Makefile.mk
include $(EN_M6_04_ATOMICS_DIR)/Makefile.mk

#include rules for exercises
include $(EN_EX_DIR)/Makefile.mk

#include rules for labs
include $(EN_LABS_DIR)/Makefile.mk

#include rues for projects
include $(EN_PROJ_DIR)/Makefile.mk
