"Install pugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'                                                       "Reasonable defaults for settings
Plug 'drewtempelmeyer/palenight.vim'                                            "Colorscheme
Plug 'junegunn/seoul256.vim'                                                    "Colorscheme
Plug 'lifepillar/vim-gruvbox8'                                                  "Colorscheme
Plug 'itchyny/lightline.vim'                                                    "Statusline
Plug 'sheerun/vim-polyglot'                                                     "Highlighting for different file types
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                   "Async tooltips tool
Plug 'tpope/vim-obsession'                                                      "Session automatic management
Plug 'dhruvasagar/vim-prosession'                                               "Save session per directory
Plug '907th/vim-auto-save'                                                      "Automatically save files on change
Plug 'andymass/vim-matchup'                                                     "Navigation on matching text
Plug 'preservim/nerdcommenter'                                                  "Code commenting
Plug 'neoclide/coc.nvim', { 'branch': 'release' }                               "Intellisense engine
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                             "Fuzzy finder for files and stuff
Plug 'junegunn/fzf.vim'                                                         "need both
Plug 'tpope/vim-fugitive'                                                       "Premier Vim plugin for Git
Plug 'idanarye/vim-merginal'                                                    "Branches management
Plug 'mhinz/vim-signify'                                                        "Show VCS difs in files
Plug 'chrisbra/vim-diff-enhanced'                                               "Better diff
Plug 'scrooloose/nerdtree'                                                      "File navigation
Plug 'Xuyuanp/nerdtree-git-plugin'                                              "Show changed files in tree
Plug 'ryanoasis/vim-devicons'                                                   "Icons for files

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
