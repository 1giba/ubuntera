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

Create your config file:
```bash
cp default.config.yml config.yml
```

Please, edit your **git user** from `config.yml`:
```yml
git_user: YourUser      ### Your user name
git_email: Your@Email   ### Your email
# git_user: 1giba
# git_email: olamundo@gmail.com
```

- If you don't create the config file, it will assign the default settings.
- The `config.yml` is the only file you can edit of the ubuntera project.

## Main Commands

```bash
make all                # install requirements and packages
make bootstrap-install  # install requirements
make bootstrap          # check requirements
make install            # install packages
```

## Features

If you don't need all you can install what you need.

#### Web Browsers

- Chromium
- Microsoft Edge
- Mozilla Firefox

```bash
make browsers  # install all browsers
make chromium  # install chromium
make edge      # install edge
```
Edit the `config.yml` file if you don't need these:
```yml
configure_chromium: false  # default: `true`
configure_edge: false      # default: `true`
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
Edit the `config.yml` file if you don't need these:
```yml
configure_slack: false      # default: `true`
configure_telegram: false   # default: `true`
configure_whatsdesk: false  # default: `true`
configure_zoom: false       # default: `true`
```
#### Desktop Flavours

- Budgie Desktop

```bash
make desktop-flavours # install desktop flavour
```
Edit the `config.yml` file if you don't need these:
```yml
# Change to `false` if you don't want to change the ubuntu desktop.
configure_desktop: false
```
#### Dev Tools

- Git
- Postman
- VSCodium

```bash
make dev-tools # install all dev tools
make codium    # install vscodium
make git       # install git
make postman   # install postman
```
Edit the `config.yml` file if you don't need these:
```yml
configure_codium: false             # default: `true`
configure_codium_extensions: false  # default: `true`
configure_git: false                # default: `true`
configure_postman: false            # default: `true`
```

You can also remove my IDE default preferences or put yours:
```yml
codium_preferences: |
  {
  }
`````

There is a variable called as `codium_extensions`. It's an array field type and you can add a new vscodium extension or remove the extension that you don't need.
```yml
codium_extensions:
  - vendor.package1
  - vendor.package2
  - vendor.package3
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
Edit the `config.yml` file if you don't need these:
```yml
configure_awscli: false   # default: `true`
configure_docker: false   # default: `true`
configure_kubectl: false  # default: `true`
configure_lens: false     # default: `true`
configure_ngrok: false    # default: `true`
```

#### Miscelaneous

- Flameshot
- Notion
- Solaar
- Ulauncher
- Wifi Powersave mode

```bash
make misc       # install all miscelaneous
make flameshot  # install flameshot
make notion     # install notion
make powersave  # install powersave
make solaar     # install solaar
make ulauncher  # install ulauncher
```
Edit the `config.yml` file if you don't need these:
```yml
configure_flameshot: false            # default: `true`
configure_notion: false               # default: `true`
configure_ulauncher: false            # default: `true`
configure_solaar: false               # default: `true`
configure_wifi_powersave_mode: false  # default: `true`
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

Edit the `config.yml` file if you don't need these:
```yml
configure_authy: false           # default: `true`
configure_bitwarden: false       # default: `true`
configure_spotify: false         # default: `true`
configure_youtube_music: false   # default: `true`
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

Edit the `config.yml` file if you don't need these:
```yml
configure_fish: false  # default: `true`
configure_omf: false   # default: `true`
configure_tilix: false # default: `true`
```

#### Default installations

- curl
- htop
- jq
- meld
- net-tools
- silversearcher-ag
- traceroute
- vlc
- vim

```bash
make apt_install # install package list (Check your config.yml file)
```

Edit the `config.yml` file if you want to customzize:
```yaml
# Change the value of `configure_apt_install` to `false` to avoid installing the packages bellow.
configure_apt_install: false # default: `true`
# Or add a new one if you need.
# Or comment the package line if you don't need.
apt_install:
  - name: curl
  - name: htop
  - name: jq
#   - name: meld
  - name: net-tools
  - name: silversearcher-ag
  - name: traceroute
#   - name: vlc
  - name: vim
  - name: my-package
```

#### Default removals

- atril
- aisleriot
- celluloid
- cheese
- gnome-2048
- gnome-mahjongg
- gnome-mines
- gnome-screenshot
- gnome-sudoku
- gnome-terminal
- goodvibes
- libreoffice package
- lollypop
- magnus
- mate-calc
- nautilus
- parole
- rhythmbox
- thunderbird

```bash
make apt_uninstall # uninstall package list (Check your config.yml file)
```

Edit the `config.yml` file if you want to customzize:
```yaml
# Change the value of `configure_apt_uninstall` to `false` to avoid uninstalling the packages bellow.
configure_apt_uninstall: false # default: `true`
# Or add a new one if you want.
# Or comment the package line if you don't want.
apt_uninstall:
  - name: atril
  - name: aisleriot
  - name: celluloid
  - name: cheese
  - name: gnome-2048
  - name: gnome-mahjongg
  - name: gnome-mines
  - name: gnome-screenshot
  - name: gnome-sudoku
  - name: gnome-terminal
#   - name: goodvibes
#   - name: "libreoffice*"
  - name: lollypop
  - name: magnus
  - name: mate-calc
#   - name: nautilus
  - name: parole
  - name: rhythmbox
#   - name: thunderbird
  - name: firefox
```

---

**Hope you enjoy it**. _You could_ :star: _my repository_ if helps you in anyway. This would be **awesome**!! I'll really appreciate it! :heart:
