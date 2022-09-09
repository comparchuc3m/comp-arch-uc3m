EN_CONFIG_INPUT=\
config/*.tex \
config/en/*.tex \
en/license-cc.tex \

#include definitions for slides
include en/00-intro/Makefile.def
include en/m1-01-fund/Makefile.def
include en/m1-02-trends/Makefile.def

include en/m6-01-cppintro/Makefile.def

ALL_EN_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_EN_FINAL_PDF) \
$(ALL_INTRO_EN_FINAL_PDF) \
$(ALL_EXERCISES_EN_FINAL_PDF) \
$(ALL_LABS_EN_FINAL_PDF) \

allen:	$(ALL_EN_FINAL_PDF)

#include rules for slides
include $(EN_00_INTRO_DIR)/Makefile.mk

include $(EN_M1_01_FUND_DIR)/Makefile.mk
include $(EN_M1_02_TRENDS_DIR)/Makefile.mk

include $(EN_M6_01_CPPINTRO_DIR)/Makefile.mk
