ES_CONFIG_INPUT=\
config/*.tex \
config/es/*.tex \
es/license-cc.tex \

#include for slides
include es/00-intro/Makefile.def

include es/m1-01-fund/Makefile.def
include es/m1-02-trends/Makefile.def

include es/m1-02-ex/Makefile.def

include es/m6-01-cppintro/Makefile.def

ALL_ES_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_ES_FINAL_PDF) \
$(ALL_INTRO_ES_FINAL_PDF) \
$(ALL_EX_ES_FINAL_PDF) \
$(ALL_LABS_ES_FINAL_PDF) \

alles:	$(ALL_ES_FINAL_PDF)

#include rules for slides
include $(ES_00_INTRO_DIR)/Makefile.mk

include $(ES_M1_01_FUND_DIR)/Makefile.mk
include $(ES_M1_02_TRENDS_DIR)/Makefile.mk

include $(ES_M1_02_EX_DIR)/Makefile.mk

include $(ES_M6_01_CPPINTRO_DIR)/Makefile.mk
