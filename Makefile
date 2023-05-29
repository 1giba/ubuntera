
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

install: DARGS?=
install: ## Installs everything via personal-computer.yml playbook
	@$(ANSIBLE)

all: ## Does most eveything with Ansible and Make targets
all: bootstrap bootstrap-check install

######################## Below is autogenerated  ##########################
# Run ./makefile_targets_from_ansible_tags.py, copy Makefile.template below
###########################################################################
apt-install:
apt-install: ## Runs the apt-install ansible role
	@$(ANSIBLE) --tags="apt-install"

apt-uninstall:
apt-uninstall: ## Runs the apt-uninstall ansible role
	@$(ANSIBLE) --tags="apt-uninstall"

authy:
authy: ## Runs the authy ansible role
	@$(ANSIBLE) --tags="authy"

awscli:
awscli: ## Runs the awscli ansible role
	@$(ANSIBLE) --tags="awscli"

bitwarden:
bitwarden: ## Runs the bitwarden ansible role
	@$(ANSIBLE) --tags="bitwarden"

browsers:
browsers: ## Runs the browsers ansible role
	@$(ANSIBLE) --tags="browsers"

chats:
chats: ## Runs the chats ansible role
	@$(ANSIBLE) --tags="chats"

codium:
codium: ## Runs the codium ansible role
	@$(ANSIBLE) --tags="codium"

codium-extensions:
codium-extensions: ## Runs the codium-extensions ansible role
	@$(ANSIBLE) --tags="codium-extensions"

codium-preferences:
codium-preferences: ## Runs the codium-preferences ansible role
	@$(ANSIBLE) --tags="codium-preferences"

chromium:
chromium: ## Runs the chromium ansible role
	@$(ANSIBLE) --tags="chromium"

desktop-flavours:
desktop-flavours: ## Runs the desktop flavours ansible role
	@$(ANSIBLE) --tags="desktop-flavours"

dev-tools:
dev-tools: ## Runs the dev-tools ansible role
	@$(ANSIBLE) --tags="dev-tools"

docker:
docker: ## Runs the docker ansible role
	@$(ANSIBLE) --tags="docker"

edge:
edge: ## Runs the edge ansible role
	@$(ANSIBLE) --tags="edge"

fish:
fish: ## Runs the fish ansible role
	@$(ANSIBLE) --tags="fish"

flameshot:
flameshot: ## Runs the flameshot ansible role
	@$(ANSIBLE) --tags="flameshot"

git:
git: ## Runs the git ansible role
	@$(ANSIBLE) --tags="git"

infra:
infra: ## Runs the infra ansible role
	@$(ANSIBLE) --tags="iac"

kubectl:
kubectl: ## Runs the kubectl ansible role
	@$(ANSIBLE) --tags="kubectl"

lens:
lens: ## Runs the lens ansible role
	@$(ANSIBLE) --tags="lens"

misc:
misc: ## Runs the misc ansible role
	@$(ANSIBLE) --tags="misc"

morgen:
morgen: ## Runs the morgen ansible role
	@$(ANSIBLE) --tags="morgen"

ngrok:
ngrok: ## Runs the ngrok ansible role
	@$(ANSIBLE) --tags="ngrok"

notion:
notion: ## Runs the notion ansible role
	@$(ANSIBLE) --tags="notion"

oh-my-fish:
oh-my-fish: ## Runs the oh-my-fish ansible role
	@$(ANSIBLE) --tags="oh-my-fish"

postman:
postman: ## Runs the postman ansible role
	@$(ANSIBLE) --tags="postman"

powersave:
powersave: ## Runs the wifi powersave mode ansible role
	@$(ANSIBLE) --tags="powersave"

git-clone:
git-clone: ## Runs the git clone ansible role
	@$(ANSIBLE) --tags="git-clone"

services:
services: ## Runs the services ansible role
	@$(ANSIBLE) --tags="services"

shell:
shell: ## Runs the shell ansible role
	@$(ANSIBLE) --tags="shell"

slack:
slack: ## Runs the slack ansible role
	@$(ANSIBLE) --tags="slack"

spotify:
spotify: ## Runs the spotify ansible role
	@$(ANSIBLE) --tags="spotify"

system-info:
system-info: ## Runs the system info ansible role
	@$(ANSIBLE) --tags="system-info"

telegram:
telegram: ## Runs the telegram ansible role
	@$(ANSIBLE) --tags="telegram"

tilix:
tilix: ## Runs the tilix ansible role
	@$(ANSIBLE) --tags="tilix"

ulauncher:
ulauncher: ## Runs the ulauncher ansible role
	@$(ANSIBLE) --tags="ulauncher"

vscodium:
vscodium: ## Runs the vscodium ansible role
	@$(ANSIBLE) --tags="vscodium"

whatsdesk:
whatsdesk: ## Runs the whatsdesk ansible role
	@$(ANSIBLE) --tags="whatsdesk"

youtube-music:
youtube-music: ## Runs the youtube-music ansible role
	@$(ANSIBLE) --tags="youtube-music"

zoom:
zoom: ## Runs the zoom ansible role
	@$(ANSIBLE) --tags="zoom"
