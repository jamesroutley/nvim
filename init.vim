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

" Automatically set tabstop
" Plug 'tpope/vim-sleuth'

" Fugitive: git wrapper
Plug 'tpope/vim-fugitive'

" Rhubarb: GitHub extension for fugitive
Plug 'tpope/vim-rhubarb'

" Initialise plugin system
call plug#end()

" Set the leader key to be comma
let mapleader = ","

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

" custom netrw setting disabled while I try out vinegar
" " netrw settings
" " Make new netrw window 15% size of current window
" let g:netrw_winsize = 15
" " Open netrw Left Explorer with ,n
" " nmap <leader>n :Lex<cr>
" " Display the current directory in the list
" let g:netrw_liststyle = 3

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

" Show nerdtree
" map <leader>n :NERDTreeToggle<cr>

" Custom ALE linters
:let g:ale_linters = {
\	'go': ['goimports', 'go build'],
\	'markdown': []
\}

" Custom ALE fixers
:let g:ale_fixers = {
\	'go': ['goimports'],
\	'python': ['yapf']
\}

let g:ale_fix_on_save = 1

" Wrap markdown text at column 80
au BufRead,BufNewFile *.md setlocal textwidth=80
