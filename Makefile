CONFIG_PATH := $(or $(XDG_CONFIG_HOME),$(HOME)/.config)
TGT := $(CONFIG_PATH)/espanso/match
SRC := $(HOME)/incantationes

.PHONY: espanso proofreading

espanso:
	sudo yay -S espanso

proofreading:
	mkdir -p $(TGT)
	ln -sf $(SRC)/proofreading $(TGT)/proofreading

