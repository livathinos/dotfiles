## Installation

Run `script/boostrap` to get going. Any file with a `.link` extension will get
symlinked to a dotfile in your home directory with same name.

## Setting up bash powerline

1. Install a version of bash > 4. Using homebrew:
  ```
  brew install bash
  sudo /etc/shells << <bash_installation_path>
  chsh
  ```
  where `bash_installation_path` is something like
  `/usr/local/Cellar/bash/4.x.x/bin/bash`.

2. iTerm -> Preferences -> Colors -> Load Presets -> Import and import the
   DarkTheme.iterm file from `dotfiles/iterm/`
