"Install pugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

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
Plug 'tpope/vim-obsession'                                                      "Session automatic management
Plug 'dhruvasagar/vim-prosession'                                               "Save session per directory
Plug 'andymass/vim-matchup'                                                     "Navigation on matching text
Plug 'preservim/nerdcommenter'                                                  "Code commenting
Plug 'sheerun/vim-polyglot'                                                     "Highlighting for different file types
Plug 'neoclide/coc.nvim', { 'branch': 'release' }                               "Intellisense engine
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                             "Fuzzy finder for files and stuff
Plug 'tpope/vim-fugitive'                                                       "Premier Vim plugin for Git
Plug 'idanarye/vim-merginal'                                                    "Branches management

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
