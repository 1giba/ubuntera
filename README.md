# Ubuntera

My Ubuntu 22.04 development environment for laptops and desktops based on [ianclearly/ubuntu-dev-playbook](https://github.com/ianclearly/ubuntu-dev-playbook).

## Requirements

- Install make:
   - `sudo apt install make`
- Generate your [SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
   - After that reconfigure your github/gitlab SSH settings.

## Configuration

- Create a `config.yml`.
- You will need to define the git user's name and email.

```yml
git_user: "Your user's name"
git_email: "Your user's email"
```

- You can clone your repositories:
```yml
configure_projects: true
projects:
  -
```

- You can override the variables of `default.config.yml`.

**Example:**
```yml
configure_desktop: true
selected_desktop: 'budgie'
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
