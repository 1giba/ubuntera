# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Calendar Versioning](https://calver.org/).

[![Calendar Versioning](https://img.shields.io/badge/calver-YYYY.M.D-22bfda.svg)](https://calver.org)

## [Unreleased]

### Added

- `colorls` gem per [#246](https://github.com/iancleary/ubuntu-dev-playbook/issues/246)
- Python script to auto-generate Makefile targets from playbook.yml
- Configure variables to enable/disable roles/tasks per [#254](https://github.com/iancleary/ubuntu-dev-playbook/issues/254)
- Airpods Pro bluetooth controller fixes per [#252](https://github.com/iancleary/ubuntu-dev-playbook/issues/252)
- Wifi Powersave Configuration per [#242](https://github.com/iancleary/ubuntu-dev-playbook/issues/242)
- VS Code extensions for HTML per [#239](https://github.com/iancleary/ubuntu-dev-playbook/issues/239) and [#253](https://github.com/iancleary/ubuntu-dev-playbook/issues/253)

### Changed

- Renamed `zsh_fonts` role to `fonts`, as its used by `zsh`'s `powerlevel10k` and `colorls`
- Reorganized roles, tasks, default.config.yml per [#255](https://github.com/iancleary/ubuntu-dev-playbook/pull/255)
- changed username back from `icancclearynow` to `iancleary` 😅

## [2021.9.8]

### Added

- Yadm dotfiles repo and branch vars, per [#215](https://github.com/iancleary/ubuntu-dev-playbook/issues/215)
- MesloLGS NF Font Installation, per [#219](https://github.com/iancleary/ubuntu-dev-playbook/issues/219)
- Bumped `docker-compose` to [2.4.1](https://github.com/docker/compose/releases/tag/2.4.1)
- Added Flatpak role [back](https://github.com/iancleary/ubuntu-dev-playbook/blob/v21.04.0/roles/flatpak/tasks/main.yml)
- elementary OS 6 support

### Changed

- `docker` and `zsh` roles are now included via git submodules, per [#217](https://github.com/iancleary/ubuntu-dev-playbook/issues/217)
- renamed repo from `ansible-desktop` to `linux-dev-playbook`
- renamed repo from `linux-dev-desktop` to `ubuntu-dev-playbook`
- Fixed git submodule workflow, per [#221](https://github.com/iancleary/ubuntu-dev-playbook/issues/221)
- Moved standard-notes to its own role, per [#224](https://github.com/iancleary/ubuntu-dev-playbook/issues/224)
- Reorganized playbook, makefile, and CI around [#232](https://github.com/iancleary/ubuntu-dev-playbook/issues/232)
- `yarn` role renamed to `nodejs`
- `yarn` installation changed to [npm global package](https://classic.yarnpkg.com/en/docs/install/#install-via-npm), as recommended
- changed username from `iancleary` to `icancclearynow`
- pulled submodules in local to repo, while [ansible/galaxy#2776](https://github.com/ansible/galaxy/issues/2776) is open
- Changed to [CalVer Version Scheme](https://calver.org/) YYYY.0M.0D, per [#250](https://github.com/iancleary/ubuntu-dev-playbook/issues/250)


### Removed

- `hey-mail` snap per [#222](https://github.com/iancleary/ubuntu-dev-playbook/issues/222)
- `setup_inventory_and_group_vars` script and `.inventory` in favor of `all` hosts and single `default.config.yml` file.
- library/json_mod ansible module, which was only used in the deprecated ticktick nativefier app [#235](https://github.com/iancleary/ubuntu-dev-playbook/issues/235)
- GNOME Desktop customization
- Merged snapd roles: chat-clients, development-tools, common snaps into `snapd`

## [21.04.1]

### Added

- Terraform
- Linode CLI (pip3)
- Install latest release of ulauncher
- [profile-sync-daemon](https://github.com/graysky2/profile-sync-daemon) via <https://linuxunplugged.com/379>
- [GNOME Sushi](https://gitlab.gnome.org/GNOME/sushi)
- Hyper-V resolution fix, per [#212](https://github.com/iancleary/ubuntu-dev-playbook/issues/212)

### Changed

- `github-cli` role now defaults to latest github release using [community.general.github_release](https://docs.ansible.com/ansible/latest/collections/community/general/github_release_module.html)
- refactored playbook to use tagged plays (need to refactor Makefile or use bash script)
- Bumped docker-compose to `1.29.0`
- Added dedicated `authy` role for beta snap (part of `make init` on every machine)
- Allow github actions to not prompt for password when username or hostname matches runner
- Changed to MIT License

### Removed

- Unused Makefile Code (TravisCI, ProtonMail Bridge, TickTick)
- LibreOffice and Evolution Flatpak installations
- Removed Jetbrains mono (I switched to powerlevel10k's recommended fonts)
- Removed Steam

## [21.04.0]

### Added

- [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher), see the [Integrate any AppImage into the Ubuntu Desktop](https://dev.to/strotgen/integrate-tinkerwell-or-any-appimage-into-the-ubuntu-desktop-le9) article. ([#176](https://github.com/iancleary/ubuntu-dev-playbook/issues/176))
- [ULauncher](https://github.com/ULauncher/ULauncher) ([#179](https://github.com/iancleary/ubuntu-dev-playbook/issues/179))
- [Caffeine](https://launchpad.net/caffeine) ([#178](https://github.com/iancleary/ubuntu-dev-playbook/issues/178))
- [PDFSlicer](https://github.com/junrrein/pdfslicer) ([#182](https://github.com/iancleary/ubuntu-dev-playbook/issues/182))

### Changed

- Fixed regression on timeshift package name
- Flameshot moved from deb to snap, per ([#183](https://github.com/iancleary/ubuntu-dev-playbook/issues/183))
- Bumped `node` version to latest lts, 14.x
- Bumped `gh` CLI to version 1.4.0
- Separated Test and Lint GitHub Actions workflows
- USER_STRING in Makefile to include `ansible_user` for `docker` role
- Updated documentation domain name
- moved to icancclearynow.docker ansible role
- changed to YY.0M.MICRO calendar versioning


### Removed

- Ubuntu 18.04 testing
- Python 3.6 & 3.7 installation
- Jetbrains mono installation

## [2020.1.0]

### Added

- [hey-email](https://snapcraft.io/hey-mail) snap for <https://hey.com/>
- `pavucontrol` GUI for pulseaudio (control and stability of headphones for audio/video conferencing)
- [yadm](yadm.io) dotfile manager
- [pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) VSCode Extension
- [Okular KDE Document Viewer](https://flathub.org/apps/details/org.kde.okular)
- [Hyper Terminal](https://hyper.is), with "pane:splitHorizontal": "ctrl+shift+f", // changed from "ctrl+shift+e" because https://github.com/vercel/hyper/issues/3660

### Changed

- updated Makefile to have persistent PATH to resolve [#164](https://github.com/iancleary/ubuntu-dev-playbook/issues/164), thanks for the help [ieguiguren](https://github.com/ieguiguren).
- Dropped `zsh-users/zsh-autosuggestions` plugin from [icancclearynow/ansible-role-zsh_antibody](https://github.com/iancleary/ansible-role-zsh_antibody) role
- Reorganized software documentation section into alphabetical categories
- Bumped `gh` to `v0.11.1`
- Fixed bug where gsetting custom entries list didn't contain hyper and flameshot
- Changed to [CalVer Version Scheme](https://calver.org/) YYYY.MINOR.MICRO
- Deprecating Ubuntu 18.04 LTS

### Removed

- kite autocompletion
- `.vscode` folder (spellcheck is in dotfiles not repo)
- Evolution and Protonmail-Bridge flatpaks

## [0.11.0] - 2020-06-21

### Added

- Imported [icancclearynow.jetbrains_mono](https://galaxy.ansible.com/icancclearynow/jetbrains_mono) ansible role
- Imported [icancclearynow.zsh_antibody](https://galaxy.ansible.com/icancclearynow/zsh_antibody) ansible role
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-) plugin
- [LinSSID wifi-analyzer](https://help.ncf.ca/WiFi_Analyzer_for_Linux), attribution: [Linux Unplugged #355](https://podcasts.apple.com/us/podcast/linux-unplugged/id687598126?i=1000475937121)
- Code Extensions: `hediet.vscode-drawio`, `mhutchie.git-graph`, and `sdras.vue-vscode-snippets`
- Code Theme: `sdras.night-owl`
- GitHub Actions CI for [ubuntu18.04 and ubuntu20.04](https://github.com/actions/virtual-environments/) coverage

### Changed

- Terminal key to just single value '<Super>t'
- Upgrade `gh` version to 0.10.0
- Default firefox to deb until GNOME extensions can be installed using firefox snap
- Switched Cherrytree from Snap to Flatpak

### Removed

- Buggy starting of flameshot in `run.sh`
- Local zsh role
- .travis.yml file

## [0.10.0] - 2020-05-10

### Added

- `zsh_default_shell_command` and `zsh_custom_default_shell_command` per [#134](https://github.com/iancleary/ubuntu-dev-playbook/pull/134)
- `python-is-python3` apt package for Python-poetry on Ubuntu 20.04 per [#135](https://github.com/iancleary/ubuntu-dev-playbook/issues/135)
- `dconf` variables and loops per [#131](https://github.com/iancleary/ubuntu-dev-playbook/issues/131)
- `antibody` shell plugin manager per [#132](https://github.com/iancleary/ubuntu-dev-playbook/issues/132)

### Changed

- `zsh_plugins` to drop `ansible` and `aws`; add `yarn`
- Snap variables to include `channel`, `classic`, and `name` dictionary items per [#137](https://github.com/iancleary/ubuntu-dev-playbook/issues/137)
- Moved group_vars from `group_vars/all.yml` to `group_vars/all/*.yml` per [#139](https://github.com/iancleary/ubuntu-dev-playbook/issues/139)

### Removed

- GNOME Themes target (happy with 20.04 `yaru` theme 😍)

## [0.9.0] - 2020-05-03

### Added

- [JetBrains Mono Font](https://www.jetbrains.com/lp/mono/) via [Download JetBrainMono-1.0.3.zip](https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip)
- [group_vars](group_vars) folder
- [library/json_mod](library/json_mod) module, from [bradymholt/json_mod](https://gist.github.com/bradymholt/17cb99185c7b80b0f34a)
- Kite AI Autocompletion and Docs for Python, via [kite.com](https://kite.com/)
- Flameshot detection on installed package version
- Docker support for Ubuntu 20.04
- Code Extensions variables per [#83](https://github.com/iancleary/ubuntu-dev-playbook/issues/83)
- Snaps variables
- Added pre-commit python package per [#116](https://github.com/iancleary/ubuntu-dev-playbook/issues/116)
- Ansible VS Code Extension
- Nautilus Mounts, Scripts to convert mounted paths to UNC paths
- `group_vars/*/*` to `.gitignore` to allow any host to use a sub-folder privately
- [Python-Poetry](https://python-poetry.org/docs/) to the python3.8 supporting make target

## Changed

- Moved role vars/ to defaults/ when group_vars make sense
- Changed `gnome-extensions` to have dock on bottom, and multi-monitor dock turned off
- `inventory` now uses the `localhost` and `{hostname}` groups.
- Removed unneeded ansible.builtin.apt_repository: task for Docker on Ubuntu 20.04
- Bumped gh CLI version to 0.7.0
- Moved peek role after Flatpak to ensure dependencies are met
- GNOME Themes role on performed on Ubuntu 18.04 due to PPA availability at 20.04 launch
- Fixed repo name in README
- Moved flatpak application list to group_vars
- Updated evolution and libreoffice roles to remove apt packages
- Switched to Cherrytree as a snap
- Switched Protonmail Bridge from apt to Flatpak
- `run.sh` script to create private group_vars folder for any hostname

## Removed

- Ticktick from `make install` as it fails during fresh install
- `sudo reboot` from end of [run.sh](run.sh)
- Moved `Poetry` to archive
- Cherrytree role (apt installation)
- Removed [Archive](https://github.com/iancleary/ubuntu-dev-playbook/blob/4ed8084cbcf95928239effc0f2cb74b7c47d4170/archive/not-used/) folder

## [0.8.0] - 2020-04-18

### Added

- Make non-ansible role for new machine script
- GNOME terminal: set `theme-variant` to 'dark' (fixed)
- GNOME Extensions: Set dock icon size to 24
- Chown and chmod `$HOME/.local/bin`
- Chown and chmod cloned repo in `run.sh`
- Source `. /etc/profile` in yarn role
- Start Flameshot automatically
- Upgrade system in run.sh, reboot when done
- Python 3.8 and flit
- Added [ncspot snap](https://snapcraft.io/ncspot)

### Changed

- CI: Moved flameshot test to GNOME job
to test `make flameshot-keybindings`
- Moved Python3.6 and Python3.7 `make` targets to main Makefile
- `sh` linting in `yarn.sh.j2` template
- Changed `.travis.yml` to use Makefile for lifecyle
- Upgraded github-cli version to 0.6.4
- Peek: switched from a deb to Flatpak
- Upgraded github-cli version to 0.6.3
- Upgraded protonmail-bridge to 1.2.6-1
- Changed `pip3` to `python3 -m pip` for version compatibility

## Removed

- Removed `sudo` from `sudo bash` in new machine script

## [0.7.0] - 2020-03-23

### Added

- Common-snaps: Added [breaktimer](https://snapcraft.io/breaktimer) snap
- Development-tools: Added [VSCodium](https://snapcraft.io/vscodium) snap
- Apt Dependencies Script: Added [yamllint](https://yamllint.readthedocs.io/)
- CI: linting - [yamllint](https://yamllint.readthedocs.io/) and [shellcheck](https://www.shellcheck.net/)
- CI: linting - [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)
- Added `flameshot-keybindings` and `tresorit` Make targets to New Machine Setup
- Added [carbon-cli](https://github.com/mixn/carbon-now-cli) to Yarn globals
- CI: Added coverage for GNOME roles
- CI: Combined jobs since Travis Open Source allows 5 parallel jobs

### Changed

- CI: Switched from GitHub Actions to Travis-CI
- Snaps: moved constituent parts of snap role into separate roles
- Linted all yaml files with [yamllint](https://yamllint.readthedocs.io/)
- Linted all bash files with [shellcheck](https://www.shellcheck.net/)
- Linted non CHANGELOG.md files with [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)
- Moved contents from archive folder

### Removed

- Spring cleaning in archive folder

## [0.6.0] - 2020-03-20

### Added

- GNOME Preferences: Show date in clock -> true
- Created Protonmail Bridge Ansible Role
- Firefox: changed from apt to snap
- GNOME Preferences: Show Desktop Icons -> false
- TickTick: Add Nativefier yarn global and role for TickTick install

## [0.5.0] - 2020-03-14

### Added

- Moved to Ansible for the backend
- Added GNOME Evolution, using Flatpak
- Added LibreOffice, using Flatpak
- Added GNOME theme, icon, cursor installation
- Added ZSH installation, custom zshrc template
- Added Yarn (and Nodejs)
- GNOME Preferences - set "attach-modal-dialogs" to False
- GNOME Preferences - set Desktop Window Management "focus-mode" to sloppy
- Added [Planner](https://flathub.org/apps/details/com.github.alainm23.planner), using Flatpak
- Added [run.sh](run.sh) new machine script

### Removed

- have yet to port (TBD if will port all)
  - custom gnome-extensions, tresorit, unifi-controller

## [0.4.0] - 2020-02-28

- Added TickTick Native App using [nativefier](https://github.com/jiahaog/nativefier)
- Added [Yet Another Dotfile Manager](https://yadm.io)
- Flameshot: download and install 0.6.0 deb from Github (apt installs 0.5.1-2 at time of writing)
- Stacer: download and install 1.1.0 deb from Github
- Timeshift: added ppa per <https://github.com/teejee2008/timeshift>
- Python upgrade Setuptools, [reference](https://stackoverflow.com/questions/14426491/python-3-importerror-no-module-named-setuptools)
- Added `gh` CLI <https://github.com/cli/cli/releases/tag/v0.5.5>
- Added Protonmail-bridge beta client

## [0.3.0] - 2020-01-12

### Fixed

- fixed python3.* [keyring.alt pip issue with package upgrade](https://bugs.launchpad.net/usd-importer/+bug/1794041)

### Removed

- Removed Brave Browser
- Removed [icloud-for-linux](https://snapcraft.io/icloud-for-linux) snap
- Removed zim-desktop-wiki

### Updated

- updated GNOME theme installation to use [tliron/install-gnome-themes](https://github.com/tliron/install-gnome-themes)
- moved dash-to-dock to unique target

### Added

- Added Peek (GIF Screen Recorder)
- Added Nordvpn
- Added Standard Notes snap

## [0.2.0] - 2019-11-17

### Added

- GNOME keybindings: terminal and close window set to Pop!_OS defaults
- GNOME preferences: changed default clock to '24h'
- GNOME extensions: added GNOME tweak tool, argos installation, and my custom argos extensions
- Docker: run-as-non-root user resolving
- oh-my-zsh: modified install to work within Makefile and use /tmp
- Various: -y flags for apt installs
- Working python altinstall
- Added [poetry](https://poetry.eustace.io/), Python packaging and dependency management made easy
- Added Slack as a snap
- Added Chromium as a snap (note the snap isolation prevents some corp domain DNS resolution)
- Added Lock screensaver to `<Super>l`
- Added [Zim-Desktop-Wiki](https://zim-wiki.org/downloads.html) Ubuntu PPA
- Added [Cherrytree](https://www.giuspen.com/cherrytree/) Ubuntu PPA
- Github Actions CI for most make targets that are not GUI or login/logout dependent

## [0.1.1] - 2019-10-10

### Added

- Install `flatpak`, `steam`

## [0.1.0] - 2019-10-07

### Added

- Use of Makefile as default scripting interface
- Install `ansible`, `Visual Studio Code`, `docker`, `docker-compose`, `nodejs`, `postman`, `python3.7`, `Signal Desktop`, `Telegram`, `Snap`, `Spotify`, `Sublime Text`, `Tresorit`, `yarn`, and `zsh`
- Configure GNOME keybindings and personal preferences

[Unreleased]: https://github.com/iancleary/ubuntu-dev-playbook/compare/v2021.9.8...HEAD
[2021.9.8]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v2021.9.8
[21.04.1]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v21.04.1
[21.04.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v21.04.0
[2020.1.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v2020.1.0
[0.11.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.11.0
[0.10.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.10.0
[0.9.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.9.0
[0.8.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.8.0
[0.7.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.7.0
[0.6.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.6.0
[0.5.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.5.0
[0.4.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.4.0
[0.3.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.3.0
[0.2.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.2.0
[0.1.1]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.1.1
[0.1.0]: https://github.com/iancleary/ubuntu-dev-playbook/releases/tag/v0.1.0
