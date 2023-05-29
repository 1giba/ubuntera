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
```

## Main Commands

```bash
make all # install requirements and packages
make bootstrap-install # install requirements
make bootstrap # check requirements
make install # install packages
```

## Features

#### Web Browsers

- Chromium
- Microsoft Edge
- Mozilla Firefox

```bash
make browsers  # install all browsers
make chromium  # install chromium
make edge      # install edge
```

#### Chats

- Slack
- Telegram
- Whatsdesk
- Zoom

```bash
make chats     # install all apps for chating
make slack     # install slack
make telegram  # install telegram
make whatsdesk # install whatsdesk
make zoom      # install zoom
```

#### Desktop Flavours

- Budgie Desktop

```bash
make desktop-flavours # install desktop flavour
```

#### Dev Tools

- Git
- Postman
- VSCodium

```bash
make dev-tools # install all dev tools
make git       # install git
make postman   # install postman
make codium    # install vscodium
```

#### Infrastructure

- AWS Cli 2
- Docker
- Kubectl
- Lens

```bash
make infra     # install all infra tools
make awscli    # install awscli
make kubectl   # install kubectl
make lens      # install lens
```

#### Miscelaneous

- Flameshot
- Morgen
- Notion
- Ulauncher
- Wifi Powersave mode

```bash
make misc       # install all miscelaneous
make flameshot  # install flameshot
make morgen     # install morgen
make notion     # install notion
make ulauncher  # install ulauncher
make powersave  # install powersave
```

#### Services

- Authy
- Bitwarden
- Spotify
- Youtube Music Player

```bash
make services      # install all services
make authy         # install authy
make bitwarden     # install bitwarden
make spotify       # install spotify
make youtube-music # install youtube music player
```

#### Shell

- Fish
- Oh My Fish
- Tilix

```bash
make shell       # install all shell stuff
make fish        # install fish
make oh-my-fish  # install oh-my-fish
make tilix       # install tilix
```


---

**Hope you enjoy it**. _You could_ :star: _my repository_ if helps you in anyway. This would be **awesome**!! I'll really appreciate it! :heart:
