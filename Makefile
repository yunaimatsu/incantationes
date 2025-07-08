CONFIG_PATH := $(or $(XDG_CONFIG_HOME),$(HOME)/.config)
TGT := $(CONFIG_PATH)/espanso/match
SRC := $(HOME)/incantationes

.PHONY: espanso proofreading translation

espanso:
	sudo yay -S espanso

proofreading:
	mkdir -p $(TGT)
	ln -sf $(SRC)/proofreading.yml $(TGT)/proofreading.yml

translation:
	mkdir -p $(TGT)
	ln -sf $(SRC)/translation.yml $(TGT)/translation.yml
