" vim-plug
" Plugins will be downloaded to ~/.vim/plugged
call plug#begin('~/.config/nvim/plugged')

" Auto Pairs: insert or delete brackets, parens, quotes in pairs
Plug 'jiangmiao/auto-pairs'

" Commentary: comment out lines of code
Plug 'tpope/vim-commentary'

" Gitgutter: display git diff info
Plug 'airblade/vim-gitgutter'

" Dracula: a spooky theme
Plug 'dracula/vim'

" Polyglot: syntax highlighting for common languages
Plug 'sheerun/vim-polyglot'

" Ale: asynchronous lint engine
Plug 'w0rp/ale'

" Vim Go: Golang development
Plug 'fatih/vim-go'

" Vim Vinegar: Simplify netrw
Plug 'tpope/vim-vinegar'

" Goyo: distraction-free writing
Plug 'junegunn/goyo.vim'

" Logbook: take note
Plug 'jamesroutley/logbook.vim'

" Pico8 syntax
Plug 'justinj/vim-pico8-syntax'

" Fugitive: git wrapper
Plug 'tpope/vim-fugitive'

" Rhubarb: GitHub extension for fugitive
Plug 'tpope/vim-rhubarb'

" FZF: fuzzy file finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" CtrlSF: searching
Plug 'dyng/ctrlsf.vim'

" Minisnip: code snippets
Plug 'KeyboardFire/vim-minisnip'

" Jinja2 syntax highlighting
Plug 'Glench/Vim-Jinja2-Syntax'

" Editorconfig: editor configuration
Plug 'editorconfig/editorconfig-vim'

" Initialise plugin system
call plug#end()

" Set the leader key to be space
let mapleader = " "

" Quickly save with ,w
nmap <leader>w :w!<cr>

" Easy split navigation
map <C-j> <C-w>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Open new splits to right and bottom 
set splitbelow
set splitright

" Hide search highlights with ,<cr>
map <silent> <leader><cr> :noh<cr>

" Colorscheme
color dracula

" Line numbers
set number

" Search behaviour
" Ignore case when searching
set ignorecase
" Except when the search query contains a capital letter	
set smartcase

" Colour at column 80
set colorcolumn=80

" Copy to/from the macOS clipboard
set clipboard=unnamed

" Simplify using tabs
nnoremap ˙ gT
nnoremap ¬ gt
nnoremap T :tabnew<cr>

" Open the current file in a new vertial split with '='
nnoremap = :vsplit<cr>

" Custom ALE linters
:let g:ale_linters = {
\	'go': ['goimports', 'go build'],
\	'markdown': []
\}

" Custom ALE fixers
:let g:ale_fixers = {
\	'go': ['goimports'],
\	'python': ['yapf'],
\	'javascript': ['prettier']
\}

let g:ale_fix_on_save = 1

" Wrap markdown text at column 80
au BufRead,BufNewFile *.md setlocal textwidth=80

" Enable live update search/replace
set inccommand=nosplit

" Nunjucks syntax highlighting
" https://stackoverflow.com/a/28117335/4129860
au BufRead,BufNewFile *.njk set filetype=jinja

" 24 bit colour
set termguicolors

" Switch focus to CtrlSF pane when searching is finished
let g:ctrlsf_auto_focus = {
\ 	"at" : "done",
\ 	"duration_less_than": 1000
\ }

" Bash-style autocomplete
" https://stackoverflow.com/a/526940/4129860
set wildmode=longest,list,full
set wildmenu
