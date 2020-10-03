## Features

* Automatic sessions management
* Autosave
* Convinient git operations
* Icons for changed files
* Icons for changed lines
* Git branches switch/creation
* Virtual text for blame
* Diff preview for changes
* Intellisense for rust/python/js, code navigation
* Terminal in floating window for quick commands
* Fast source and file search with preview with fuzzy search
* Quick comment/uncomment

## Install
Install plug.vim ([Instructions](https://github.com/junegunn/vim-plug)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim
:PlugInstall
```

Enable bitmap fonts for Ubuntu-like distros: http://www.alanbriolat.co.uk/enable-bitmap-fonts-on-ubuntu-jaunty.html
Install [NERD font](https://github.com/ryanoasis/nerd-fonts#option-3-install-script) to support icons in NERDTree. Recommended:  [Iosevka NERD font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)

## Keys cheatsheet

* Leader set to `,`
* Recording remaped to `,q`
* `,d` - show diff for change
* `<F10>` - NERDTree
* `<F12>` - Git branches manipulations
  * `cc`  - switch to branch
  * `aa`  - add new branch
* `<F9>`  - commit view
  * `g?`  - show help
  * `cc`  - commit
  * `-` or `a` - Stash/unstash file
  * `X`  - revert file
  * `dd` - show diff
  * `dq` - exit diff
* `Alt-t` - terminal in floating window
* `,y` - copy to clipboard
* `,p` - paste from clipboard
* `,c<space>` - toggle comment for line/selection
* `K` - show documentation in tooltip. Arrows to navigate in it
* `gd` - go to definition
* `gi` - go to implementation
* `,rn` - rename symbol
* `C-o` - jump to the previous location
* `Tab` - autocomplete navigation
* `,f` or `<C-f>` for files - fast grep with fuzzy search
    * `<C-j>` `<C-k>` or `<Up>` `<Down>` for navigation.
    * `C-Up` `C-Down` for preview navigation
    * `<Tab>` to select/unselect
    * `<Enter>` - open in current buffer (selected witll be in quickfix view)
      `C-t` - in tab, `C-i` - horisontal split, `C-v` - vertical
* `,hh`, `,h:`, `,h\` - find in history

