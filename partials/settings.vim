filetype plugin on                                                              "Automaticaly enuble plugin by file type

"Themes settings
syntax enable

set termguicolors
set background=dark

let g:gruvbox_transp_bg = 1
let g:seoul256_background = 233
let g:palenight_terminal_italics=1
colorscheme palenight
hi Normal ctermbg=none guibg=none

let g:vim_markdown_conceal = 0                                                  "Disable conceal feature for markdown (polyglot plugin)
let g:vim_markdown_conceal_code_blocks = 0                                      "For code blocks too
let g:vim_json_syntax_conceal = 0                                               "For json too

"General settings
let g:loaded_netrwPlugin = 1                                                    "Do not load netrw
let g:loaded_matchit = 1                                                        "Do not load matchit, use matchup plugin<Paste>

set title                                                                       "change the terminal's title
set number                                                                      "Line numbers are good
set relativenumber                                                              "Show numbers relative to current line
set noshowmode                                                                  "Hide showmode because of the powerline plugin
set gdefault                                                                    "Set global flag for search and replace
set cursorline                                                                  "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=a                                                                     "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
set fileencoding=utf-8                                                          "Set utf-8 encoding on write
set nowrap                                                                      "Disable word wrap by default
set linebreak                                                                   "Wrap lines at convenient points
set listchars=tab:│\ ,trail:·                                                   "Set trails for tabs and spaces
set list                                                                        "Enable listchars
set lazyredraw                                                                  "Do not redraw on registers and macros
set hidden                                                                      "Hide buffers in background
set conceallevel=2 concealcursor=i                                              "neosnippets conceal marker
set splitright                                                                  "Set up new vertical splits positions
set splitbelow                                                                  "Set up new horizontal splits positions
set inccommand=nosplit                                                          "Show substitute changes immidiately in separate split
set exrc                                                                        "Allow using local vimrc
set secure                                                                      "Forbid autocmd in local vimrc
set grepprg=rg\ --smart-case\ --vimgrep                                         "Use ripgrep for grepping
set tagcase=smart                                                               "Use smarcase for tags
set updatetime=100                                                              "Cursor hold timeout
set shortmess+=c                                                                "Disable completion menu messages in command line
set undofile                                                                    "Keep undo history across sessions, by storing in file
set noswapfile                                                                  "Disable creating swap file
set nobackup                                                                    "Disable saving backup file
set nowritebackup                                                               "Disable writing backup file
set fillchars+=vert:│                                                           "Use vertical line for vertical split
set breakindent                                                                 "Preserve indent on line wrap
set smartindent                                                                 "Use smarter indenting
set expandtab                                                                   "Use spaces for indentation
set shiftwidth=2                                                                "Use 2 spaces for indentation
set nofoldenable                                                                "Disable folding by default
set colorcolumn=100                                                             "Highlight 80th column for easier wrapping
set foldmethod=syntax                                                           "When folding enabled, use syntax method
set diffopt+=vertical                                                           "Always use vertical layout for diffs
set wildmenu                                                                    "Use the cool tab complete menu
set wildignore=*.o,*~
set scrolloff=8                                                                 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=5
"set pyxversion=3                                                               "Always use python 3
set updatetime=100                                                              "Update for vim-signify
"set sessionoptions-=blank                                                       "Make compatible to sessions

let g:auto_save = 1                                                             "enable AutoSave on Vim startup
let g:auto_save_silent = 1                                                      "do not display the auto-save notification
let g:blamer_enabled = 1                                                        "show blame in line
let g:blamer_delay = 100
let mapleader=","                                                               "Set user leader to ,
"
":Q behaves as :q
command! Q :q
command! W :w
command! Wq :wq

"NERDTree settings
map <leader>o :NERDTreeToggle<CR>
let NERDTreeWinSize = 25 
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swp$', '\~$']
let g:NERDTreeGitStatusUseNerdFonts = 1

"Easy buffers navigation
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

"Persistent undo
set undodir=/tmp/
set undofile

"Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y

"Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"Remap recording to stop hitting it accidentally
nnoremap <leader>q q
nnoremap q <Nop>

"Show line diff by hotkey
map <leader>d :SignifyHunkDiff<CR>
"Rollback hunk by hotkey
map <leader>du :SignifyHunkUndo<CR>

"Git fugitive toggle on F9
function! ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        Git
    endif
endfunction
command ToggleGStatus :call ToggleGStatus()
map <leader>g :ToggleGStatus<CR> 

"Merginal hotkey
map <leader>G :MerginalToggle<CR>

"Fzf hotkey
"find files
nnoremap <silent> <C-f> :Files<CR>
"find history
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

"find everything but files
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>f :Rg<CR>

"Fix integration between NERDTree and FZF
autocmd FileType nerdtree let t:nerdtree_winnr = bufwinnr('%')
autocmd BufWinEnter * call PreventBuffersInNERDTree()

function! PreventBuffersInNERDTree()
  if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree'
    \ && exists('t:nerdtree_winnr') && bufwinnr('%') == t:nerdtree_winnr
    \ && &buftype == '' && !exists('g:launching_fzf')
    let bufnum = bufnr('%')
    close
    exe 'b ' . bufnum
    NERDTree
  endif
  if exists('g:launching_fzf') | unlet g:launching_fzf | endif
endfunction

