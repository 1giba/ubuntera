
.PHONY: help

# Shell that make should use
# Make changes to path persistent
# https://stackoverflow.com/a/13468229/13577666
SHELL := /bin/bash
PATH := $(PATH)

# Ubuntu distro string
OS_VERSION_NAME := $(shell lsb_release -cs)

HOSTNAME = $(shell hostname)

# This next section is needed to ensure $$HOME is on PATH in the initial shell session
# The file from bash scripts/before_script_path_fix.sh
# is only loaded in a new shell session.
LOCAL_BIN = $(shell echo $$HOME/.local/bin)
# $(warning LOCAL_BIN is $(LOCAL_BIN))

# Source for conditional: https://stackoverflow.com/a/2741747/13577666
ifneq (,$(findstring $(LOCAL_BIN),$(PATH)))
	# Found: all set; do nothing, $(LOCAL_BIN) is on PATH
	PATH := $(PATH);
else
	# Not found: adding $(LOCAL_BIN) to PATH for this shell session
export PATH := $(LOCAL_BIN):$(PATH); @echo $(PATH)
endif

# "users" format is from https://github.com/icancclearynow/ansible-role-zsh
VARIABLES = '{"users": [{"username": "$(shell whoami)"}], "ansible_user": "$(shell whoami)", "docker_users": ["$(shell whoami)"]}'

# Main Ansible Playbook Command (prompts for password)
PLAYBOOK=playbook.yml
ANSIBLE_PLAYBOOK = ansible-playbook $(PLAYBOOK) -v -e $(VARIABLES)

ANSIBLE = $(ANSIBLE_PLAYBOOK) --ask-become-pass

# GitHub Actions Ansible Playbook Command (doesn't prompt for password)
RUNNER = runner
ifeq "$(HOSTNAME)" "$(RUNNER)"
	ANSIBLE = $(ANSIBLE_PLAYBOOK) --skip-tags "fonts"
endif

ifeq "$(shell whoami)" "$(RUNNER)"
	ANSIBLE = $(ANSIBLE_PLAYBOOK) --skip-tags "fonts"
endif

# Custome GNOME keybindings
CUSTOM_KEYBINDING_BASE = /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings

# - to suppress if it doesn't exist
-include make.env

$(warning ANSIBLE is $(ANSIBLE))

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
# adds anything that has a double # comment to the phony help list
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

bootstrap-before-install:
bootstrap-before-install:
	# Apt Dependencies (removes apt ansible)
	bash scripts/before_install_apt_dependencies.sh

bootstrap-install:
bootstrap-install:
	# Install ansible
	bash scripts/install.sh

bootstrap-before-script:
bootstrap-before-script:
	# Ensure "$$HOME/.local/bin" is part of PATH on future shell sessions
	# The top of the Makefile takes care of this in the initial session
	bash scripts/before_script_path_fix.sh

bootstrap: bootstrap-before-install bootstrap-install bootstrap-before-script
bootstrap: ## Installs dependencies needed to run playbook

bootstrap-check:
bootstrap-check: ## Check that PATH and requirements are correct
	@ansible --version | grep "python version"

check: DARGS?=
check: ## Checks personal-computer.yml playbook
	@$(ANSIBLE) --check

terminal-github-runner:
terminal-github-runner:
	# test coverage is in the ansible roles themselves
	@$(ANSIBLE) --tags="terminal" --skip-tags="skip-ci"

desktop-github-runner:
desktop-github-runner:
	# test coverage is in the ansible roles themselves
	@$(ANSIBLE) --tags="desktop" --skip-tags="skip-ci,terminal"

install: DARGS?=
install: ## Installs everything via personal-computer.yml playbook
	@$(ANSIBLE) --skip-tags="nautilus-mounts"
	# no planned test coverage to nautilus-mounts as it deals with file mounts

all: ## Does most eveything with Ansible and Make targets
all: bootstrap bootstrap-check install non-ansible

non-ansible:
non-ansible: ## Runs all non-ansible make targets for fresh install (all target)

	# No user input required
	make flameshot-keybindings

lint:  ## Lint the repo
lint:
	bash scripts/lint.sh

gsettings-keybindings:
gsettings-keybindings:  ## Sets GNOME custom keybindings

	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['$(CUSTOM_KEYBINDING_BASE)/flameshot/','$(CUSTOM_KEYBINDING_BASE)/hyper/']"

flameshot-keybindings: ## Flameshot custon GNOME keybindings
flameshot-keybindings: gsettings-keybindings
	# For whatever reason, I bricked my GNOME session trying this with ansible
	# so for now, I'm just going to chain this to the new machine script
	# and leave it as a make target

	# Update gnome keybindings
	# source: https://askubuntu.com/a/1116076

	gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "[]"
	gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/flameshot/ name 'flameshot'
	gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/flameshot/ command '/snap/bin/flameshot gui'
	gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/flameshot/ binding 'Print'

tresorit: ## Install Tresorit
tresorit:
	wget -O ~/Downloads/tresorit_installer.run https://installerstorage.blob.core.windows.net/public/install/tresorit_installer.run
	chmod +x ~/Downloads/tresorit_installer.run
	$(echo $0) ~/Downloads/tresorit_installer.run

######################## Below is autogenerated  ##########################
# Run ./makefile_targets_from_ansible_tags.py, copy Makefile.template below
###########################################################################

airpods-pro-bluetooth-fix:
airpods-pro-bluetooth-fix: ## Runs the airpods-pro-bluetooth-fix ansible role
	@$(ANSIBLE) --tags="airpods-pro-bluetooth-fix"

bugfix:
bugfix: ## Runs the bugfix ansible role
	@$(ANSIBLE) --tags="bugfix"

codium-extensions:
codium-extensions: ## Runs the code-extensions ansible role
	@$(ANSIBLE) --tags="codium-extensions"

debug:
debug: ## Runs the debug ansible role
	@$(ANSIBLE) --tags="debug"

desktop:
desktop: ## Runs the desktop ansible role
	@$(ANSIBLE) --tags="desktop"

dev:
dev: ## Runs the dev ansible role
	@$(ANSIBLE) --tags="dev-tools"

docker:
docker: ## Runs the docker ansible role
	@$(ANSIBLE) --tags="docker"

extra-packages:
extra-packages: ## Runs the extra-packages ansible role
	@$(ANSIBLE) --tags="extra-packages"

flatpak:
flatpak: ## Runs the flatpak ansible role
	@$(ANSIBLE) --tags="flatpak"

infra:
infra: ## Runs the infra ansible role
	@$(ANSIBLE) --tags="iac"

notion:
notion: ## Runs the infra ansible role
	@$(ANSIBLE) --tags="notion"

screen-flickering-fix:
screen-flickering-fix: ## Runs the screen-flickering-fix ansible role
	@$(ANSIBLE) --tags="screen-flickering-fix"

snap-uninstall:
snap-uninstall: ## Runs the snap-uninstall ansible role
	@$(ANSIBLE) --tags="snap-uninstall"

terminal:
terminal: ## Runs the terminal ansible role
	@$(ANSIBLE) --tags="terminal"

ulauncher:
ulauncher: ## Runs the ulauncher ansible role
	@$(ANSIBLE) --tags="ulauncher"

unused-packages:
unused-packages: ## Runs the unused-packages ansible role
	@$(ANSIBLE) --tags="unused-packages"

wifi-powersave-mode:
wifi-powersave-mode: ## Runs the wifi-powersave-mode ansible role
	@$(ANSIBLE) --tags="wifi-powersave-mode"

zsh:
zsh: ## Runs the zsh ansible role
	@$(ANSIBLE) --tags="zsh"
