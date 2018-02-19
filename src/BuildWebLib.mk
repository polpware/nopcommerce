include Makefile.inc

# WEBDIR has been defined
# Source modules 
WEB_CONTROLLER := $(WEBDIR)/Controllers
WEB_EXTENSIONS := $(WEBDIR)/Extensions
WEB_MODELS := $(WEBDIR)/Models
WEB_VALIDATORS := $(WEBDIR)/Validators
WEB_INFRASTRUCTURE := $(WEBDIR)/Infrastructure

# Target MVC
WEB_MVC_LIB_DIR := Presentation/Nop.WebLib.MVC
WEB_MVC_LIB_CONTROLLER := $(WEB_MVC_LIB_DIR)/Controllers
WEB_MVC_LIB_EXTENSIONS := $(WEB_MVC_LIB_DIR)/Extensions

# Target Data
WEB_DATA_LIB_DIR := Presentation/Nop.WebLib.Data
WEB_DATA_LIB_MODELS := $(WEB_DATA_LIB_DIR)/Models
WEB_DATA_LIB_VALIDATORS := $(WEB_DATA_LIB_DIR)/Validators
WEB_DATA_LIB_EXTENSIONS := $(WEB_DATA_LIB_DIR)/Extensions
WEB_DATA_LIB_INFRASTRUCTURE := $(WEB_DATA_LIB_DIR)/Infrastructure

# Rules for building Target MVC
$(WEB_MVC_LIB_CONTROLLER)/%.cs: $(WEB_CONTROLLER)/%.cs
	$(ECHO) Making a file $@ from $<
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_MVC_LIB_EXTENSIONS)/%.cs: $(WEB_EXTENSIONS)/%.cs
	$(ECHO) Making a file $@ from $<
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_INFRASTRUCTURE)/Cache/%.cs: $(WEB_INFRASTRUCTURE)/Cache/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

# Rules for building Target Data
$(WEB_DATA_LIB_EXTENSIONS)/%.cs: $(WEB_EXTENSIONS)/%.cs
	$(ECHO) Making a file $@ from $<
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Vendors/%.cs: $(WEB_MODELS)/Vendors/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Blogs/%.cs: $(WEB_MODELS)/Blogs/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Boards/%.cs: $(WEB_MODELS)/Boards/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Catalog/%.cs: $(WEB_MODELS)/Catalog/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Checkout/%.cs: $(WEB_MODELS)/Checkout/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Cms/%.cs: $(WEB_MODELS)/Cms/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Common/%.cs: $(WEB_MODELS)/Common/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Customer/%.cs: $(WEB_MODELS)/Customer/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Install/%.cs: $(WEB_MODELS)/Install/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Media/%.cs: $(WEB_MODELS)/Media/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/News/%.cs: $(WEB_MODELS)/News/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Newsletter/%.cs: $(WEB_MODELS)/Newsletter/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Order/%.cs: $(WEB_MODELS)/Order/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Polls/%.cs: $(WEB_MODELS)/Polls/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/PrivateMessages/%.cs: $(WEB_MODELS)/PrivateMessages/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Profile/%.cs: $(WEB_MODELS)/Profile/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/ShoppingCart/%.cs: $(WEB_MODELS)/ShoppingCart/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_MODELS)/Topics/%.cs: $(WEB_MODELS)/Topics/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Vendors/%.cs: $(WEB_VALIDATORS)/Vendors/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Blogs/%.cs: $(WEB_VALIDATORS)/Blogs/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Boards/%.cs: $(WEB_VALIDATORS)/Boards/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Catalog/%.cs: $(WEB_VALIDATORS)/Catalog/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Common/%.cs: $(WEB_VALIDATORS)/Common/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Customer/%.cs: $(WEB_VALIDATORS)/Customer/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/Install/%.cs: $(WEB_VALIDATORS)/Install/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/News/%.cs: $(WEB_VALIDATORS)/News/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/PrivateMessages/%.cs: $(WEB_VALIDATORS)/PrivateMessages/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

$(WEB_DATA_LIB_VALIDATORS)/ShoppingCart/%.cs: $(WEB_VALIDATORS)/ShoppingCart/%.cs
	$(ECHO) Making a file $@ from $<
	$(MKDIR) -p $(dir $@)
	$(SED) -f web-lib-subst.sed $< > $@

# SOURCE FILES
WEB_CONTROLLER_SOURCES := $(wildcard $(WEB_CONTROLLER)/*.cs)
WEB_MODELS_SOURCES := $(shell find $(WEB_MODELS) -type f -name '*.cs')
WEB_VALIDATORS_SOURCES := $(shell find $(WEB_VALIDATORS) -type f -name '*.cs')
# Extensions are split into two parts
WEB_EXTENSIONS_SOURCES_FOR_MVC := AttributeParserHelper.cs HtmlExtensions.cs
WEB_EXTENSIONS_SOURCES_FOR_DATA := MappingExtensions.cs
# Infrastructure is special, we are only interested in one file
WEB_INFRASTRUCTURE_SOURCES_FOR_DATA := ModelCacheEventConsumer.cs
# Target MVC FILES
WEB_MVC_LIB_CONTROLLER_SOURCES := $(subst Presentation/Nop.Web,Presentation/Nop.WebLib.MVC,$(WEB_CONTROLLER_SOURCES))
WEB_MVC_LIB_EXTENSIONS_SOURCES := $(addprefix Presentation/Nop.WebLib.MVC/Extensions/,$(WEB_EXTENSIONS_SOURCES_FOR_MVC))

# Target Data Files
WEB_DATA_LIB_MODELS_SOURCES := $(subst Presentation/Nop.Web,Presentation/Nop.WebLib.Data,$(WEB_MODELS_SOURCES))
WEB_DATA_LIB_VALIDATORS_SOURCES := $(subst Presentation/Nop.Web,Presentation/Nop.WebLib.Data,$(WEB_VALIDATORS_SOURCES))
WEB_DATA_LIB_EXTENSIONS_SOURCES := $(addprefix Presentation/Nop.WebLib.Data/Extensions/,$(WEB_EXTENSIONS_SOURCES_FOR_DATA))
WEB_DATA_LIB_INFRASTRUCTURE_SOURCES := $(addprefix Presentation/Nop.WebLib.Data/Infrastructure/Cache/,$(WEB_INFRASTRUCTURE_SOURCES_FOR_DATA))

# Prerequisite for targets (directories)
$(WEB_MVC_LIB_CONTROLLER_SOURCES): | WEB_MVC_LIB_CONTROLLER_DIR
WEB_MVC_LIB_CONTROLLER_DIR:
	$(MKDIR) -p $(WEB_MVC_LIB_CONTROLLER) 

$(WEB_MVC_LIB_EXTENSIONS_SOURCES): | WEB_MVC_LIB_EXTENSIONS_DIR
WEB_MVC_LIB_EXTENSIONS_DIR:
	$(MKDIR) -p $(WEB_MVC_LIB_EXTENSIONS)

$(WEB_DATA_LIB_INFRASTRUCTURE_SOURCES): | WEB_DATA_LIB_INFRASTRUCTURE_DIR
WEB_DATA_LIB_INFRASTRUCTURE_DIR:
	$(MKDIR) -p $(WEB_DATA_LIB_INFRASTRUCTURE)

$(WEB_DATA_LIB_MODELS_SOURCES): | WEB_DATA_LIB_MODELS_DIR
WEB_DATA_LIB_MODELS_DIR:
	$(MKDIR) -p $(WEB_DATA_LIB_MODELS) 

$(WEB_DATA_LIB_VALIDATORS_SOURCES): | WEB_DATA_LIB_VALIDATORS_DIR
WEB_DATA_LIB_VALIDATORS_DIR:
	$(MKDIR) -p $(WEB_DATA_LIB_VALIDATORS)

$(WEB_DATA_LIB_EXTENSIONS_SOURCES): | WEB_DATA_LIB_EXTENSIONS_DIR
WEB_DATA_LIB_EXTENSIONS_DIR:
	$(MKDIR) -p $(WEB_DATA_LIB_EXTENSIONS)

mvc: $(WEB_MVC_LIB_CONTROLLER_SOURCES) $(WEB_MVC_LIB_EXTENSIONS_SOURCES) 
	$(ECHO) Making web mvc lib from nop web

data: $(WEB_DATA_LIB_MODELS_SOURCES) $(WEB_DATA_LIB_VALIDATORS_SOURCES) $(WEB_DATA_LIB_EXTENSIONS_SOURCES) $(WEB_DATA_LIB_INFRASTRUCTURE_SOURCES)
	$(ECHO) Making web dat lib from nop web

.PHONY: mvc data
