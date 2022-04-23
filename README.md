# Ubuntera

My Ubuntu 22.04 development environment for laptops and desktops based on [ianclearly/ubuntu-dev-playbook](https://github.com/ianclearly/ubuntu-dev-playbook).

## Requirements

- Generate your [SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
   - After that reconfigure your github/gitlab SSH settings.

## Configuration

- Create your own `config.yml`.
- Or use the `config.yml.example` to override the variables.

```bash
cp default.config.yml config.yml # First option
cp config.yml.example config.yml # Second option
```

## Installation

- Download the zip file from repository.
- Extract to your path.
- Run `make all`.

## Features

- zsh/oh-my-zsh
- docker/docker-composer
- git
- terraform
- [VSCodium](https://vscodium.com)
- [ULauncher](https://github.com/ULauncher/ULauncher)
- [Timeshift](https://github.com/teejee2008/timeshift)
- [Flameshot](https://flameshot.js.org/#/),
- [Peek](https://github.com/phw/peek), a simple screen recorder with an easy to use interface
- [PDFSlicer](https://github.com/junrrein/pdfslicer)
- Flatseal: Manage flatpak permissions
- Bitwarden:  A secure and free fassword manager for all of your devices
- `Spotify`,
- Notion
- `Stacer` <https://github.com/oguzhaninan/Stacer>,

---
Hope you enjoy it.
