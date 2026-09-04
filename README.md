# gil-ubuntu
Personal Ubuntu pc configuration managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

Clone the repository:

```bash
git clone <repository-url> ~/gil-ubuntu
cd ~/gil-ubuntu
```

Run the installation script:

```bash
./install.sh
```

The script will:

* Update the APT package list
* Install required packages:

  * `stow`
  * `tmux`
  * `git`
  * `curl`
  * `zsh`
  * `neovim`
* Use GNU Stow to install the configuration files

Configuration files are symlinked into your home directory rather than copied.

For example:

```text
stow/tmux/.tmux.conf
        ↓
~/.tmux.conf
```

## Uninstall

To remove the configuration symlinks managed by Stow:

```bash
stow --dir=stow --target="$HOME" --delete tmux
```

This removes the symlink from `~/.tmux.conf` but does not delete the configuration from the repository.

## Updating

Pull the latest configuration:

```bash
cd ~/gil-ubuntu
git pull
```

If the configuration structure changes, re-run:

```bash
./install.sh
```
