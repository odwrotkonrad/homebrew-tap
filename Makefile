##[>] 🤖🤖
#[what] Project's Makefile
SHELL := zsh
.SHELLFLAGS := -c

COMMANDS := che-install misc-setup

.PHONY: $(COMMANDS)

MISC_FILES_TRACKED_PROFILES := misc/filesTracked,artifactDocs

-include .generated-untracked/misc/make/misc.mk

##[>] Setup [genai-include]
#[what] install the latest released che into ~/.local/bin, only when the one on PATH is older
che-install:
	@curl -fsSL https://konradodwrot.gitlab.io/che/che/che-install.sh | sh -s -- --skip-if-present-is-newer

#[what] render the misc consumer payload (misc.mk, lefthook.yml, .generated-untracked/misc/) at the pinned CENTRALIZED_ASSETS_MISC_REF
misc-setup:
	@$${BIN_CHE:-che} render-templates --profiles=misc/setup

.generated-untracked/misc/make/misc.mk: misc-setup
##[<] Setup
##[<] 🤖🤖
