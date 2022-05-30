# Ubuntera

My Ubuntu 22.04 development environment for laptops and desktops based on [ianclearly/ubuntu-dev-playbook](https://github.com/ianclearly/ubuntu-dev-playbook).

![My desktop](https://raw.githubusercontent.com/1giba/ubuntera/master/assets/imgs/desktop.png "My desktop")

## Installation

- Generate your [SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
   - After that reconfigure your github/gitlab SSH settings.
- Execute the script:

```sh
 wget -O - https://raw.githubusercontent.com/1giba/ubuntera/master/install.sh | sh -
```

## Configuration

```bash
cp default.config.yml config.yml # You need to create your own `config.yml`.
cp my.config.yml config.yml # Or use `my.config.yml`, my own setup to see what changes I did.
```

```yml
# The default playbook will uninstall the snapd.
# Add the line bellow in the config.yml file to avoid uninstalling.
configure_snap_uninstall: false
```

## Main Commands

```bash
make all # install requirements and packages
make bootstrap-install # install requirements
make bootstrap # check requirements
make install # install packages
```

## Features

```yml
- zsh/oh-my-zsh
- docker/docker-composer
- git
- terraform
- [VSCodium](https://vscodium.com)
- [ULauncher](https://github.com/ULauncher/ULauncher)
- [Timeshift](https://github.com/teejee2008/timeshift)
- [Peek](https://github.com/phw/peek), a simple screen recorder with an easy to use interface
- [PDFSlicer](https://github.com/junrrein/pdfslicer)
- Flatseal: Manage flatpak permissions
- Bitwarden:  A secure and free fassword manager for all of your devices
- `Spotify`,
- `Chromium`
- Flatseal: Manage Flatpak permissions
- Peek:  Simple screen recorder with an easy to use interface
- PDFSlicer
- Slack chat
- Zoom
- Postman
- Flameshot
- Firefox
- `Stacer` <https://github.com/oguzhaninan/Stacer>
- Kind
- Kubectl
- Helm
- Lens
- axel
- silversearcher
- vim
- meld
- Notion
- WhatsDesk: A client for WhatsApp
```

## Run specific tasks

``` bash
make bugfix  # Run tasks with bugfix tag
make codium  # Run tasks with codium tag
make codium-extension  # Run tasks with codium-extension tag
make debug  # Run tasks with debug tag
make desktop  # Run tasks with desktop tag
make dev  # Run tasks with dev tag
make docker  # Run tasks with docker tag
make extra-packages  # Run tasks with extra-packages tag
make flameshot  # Run tasks with flameshot tag
make flatpak  # Run tasks with flatpak tag
make git  # Run tasks with git tag
make helm  # Run tasks with helm tag
make hyper  # Run tasks with hyper tag
make infra  # Run tasks with infra tag
make kind  # Run tasks with kind tag
make lens  # Run tasks with lens tag
make notion   # Run tasks with notion tag
make snap-uninstall  # Run tasks with snap-uninstall tag
make stacer  # Run tasks with stacer tag
make terraform  # Run tasks with terraform tag
make terminal  # Run tasks with terminal tag
make timeshift  # Run tasks with timeshift tag
make ulauncher  # Run tasks with ulauncher tag
make unused-packages  # Run tasks with unused-packages tag
make vscodium  # Run tasks with vscodium tag
make whatsdesk  # Run tasks with whatsdesk tag
make wifi-powersave-mode  # Run tasks with wifi-powersave-mode tag
make zsh  # Run tasks with zsh tag
```

```bash
./uninstall_firefoxpwa.sh # if you've already installed firefoxpwa for whatsapp
```

## Default ZSH Aliases

#### reload
- reload aliases.

#### code
- call vs codium.

_Example:_

```bash
code ~/projects # same as `codium ~/projects`
```

#### lt
- sort by file size.

#### mnt

- view mounted drives.

#### gh
- search in bash history.

_Example:_

```bash
gh last-command # same as `history | grep last-command`
```

#### left
- sort by the most recent modified file.


#### count
- count files.

#### cpv
- copy with progress bar.

_Example:_

```bash
cpv file1 file2
```

#### del
- move files to trash.

_Example:_

```bash
del file1 file2
```

#### cg
- go to git main level.

#### drm
- remove all stopped containers.

#### drmi
- remove all untagged images.

#### dc
- alias to docker-compose.

_Example:_

```bash
dc run --rm php:8.0-cli-alpine php -ini
```

#### ff
- list files by name.

_Example:_

```bash
ff file.php
```

#### ss
- search by name inside files.
- requires silver searcher.

_Example:_

```bash
ss hello
```

#### giz
- zip only modified and new files.


---

**Hope you enjoy it**. _You could_ :star: _my repository_ if helps you in anyway. This would be **awesome**!! I'll really appreciate it! :heart:
