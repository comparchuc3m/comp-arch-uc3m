EN_CONFIG_INPUT=\
config/*.tex \
config/en/*.tex \

#include definitions for slides
include en/00-intro/Makefile.def

ALL_EN_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_EN_FINAL_PDF) \
$(ALL_INTRO_EN_FINAL_PDF) \
$(ALL_EXERCISES_EN_FINAL_PDF) \
$(ALL_LABS_EN_FINAL_PDF) \

allen:	$(ALL_EN_FINAL_PDF)

#include rules for slides
include $(EN_00_INTRO_DIR)/Makefile.mk
