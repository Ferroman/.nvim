" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'                                                      "File navigation
Plug 'ryanoasis/vim-devicons'                                                   "Icons for files
Plug 'tpope/vim-sensible'                                                       "Reasonable defaults for settings
Plug 'voldikss/vim-floaterm'                                                    "Terminal in the floating window
Plug 'mhinz/vim-signify'                                                        "Show VCS difs in files
Plug 'drewtempelmeyer/palenight.vim'                                            "Colorscheme
Plug 'junegunn/seoul256.vim'                                                    "Colorscheme
Plug 'lifepillar/vim-gruvbox8'                                                  "Colorscheme
Plug 'itchyny/lightline.vim'                                                    "Statusline
" Plug 'haya14busa/vim-asterisk'                                                "Experimental
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                   "Async tooltips tool

Plug 'andymass/vim-matchup'                                                     "Navigation on matching text
Plug 'preservim/nerdcommenter'                                                  "Code commenting
Plug 'sheerun/vim-polyglot'                                                     "Highlighting for different file types
Plug 'neoclide/coc.nvim', { 'branch': 'release' }                               "Intellisense engine
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
