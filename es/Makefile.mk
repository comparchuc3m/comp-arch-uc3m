ES_CONFIG_INPUT=\
config/*.tex \
config/es/*.tex \

#include for slides
include es/00-intro/Makefile.def

ALL_ES_FINAL_PDF=\
$(FINAL_DIR) \
$(ALL_SLIDES_ES_FINAL_PDF) \
$(ALL_INTRO_ES_FINAL_PDF) \
$(ALL_EXERCISES_ES_FINAL_PDF) \
$(ALL_LABS_ES_FINAL_PDF) \

alles:	$(ALL_ES_FINAL_PDF)

#include rules for slides
include $(ES_00_INTRO_DIR)/Makefile.mk
