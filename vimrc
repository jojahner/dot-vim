call pathogen#infect()
call pathogen#helptags()

syntax on
filetype indent plugin on

set nocompatible
set backspace=indent,eol,start
set autoindent		" always set autoindenting on
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set cursorline
set hlsearch
set wildmode=list:full
set ignorecase
set nocp
set noswapfile
set hidden
set shiftwidth=2 
set softtabstop=2 
set expandtab

set number
set smartcase 
set autoindent
set smartindent

if has("gui_running")
  set guioptions-=T
  set guifont=Source\ Code\ Pro:h13
endif
 
"colorscheme Tomorrow-Night-Eighties
"
syntax enable
set background=light
""colorscheme solarized
colorscheme espresso-soda 

set laststatus=2

let mapleader = ","

map <F4> :TagbarOpenAutoClose<CR>

map <Leader>b :BufExplorer<CR>
" map <Leader>bs :BufExplorerHorizontalSplit<CR>
" map <Leader>bv :BufExplorerVerticalSplit<CR>

map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>

function IndentV()
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction
map <Leader>iv :call IndentV()<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

nmap <silent> <leader>l :TagbarOpenAutoClose<CR>

" Run Ack fast
nnoremap <silent> <leader>q :Ack<Space>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W <C-w>s<C-w>j

" Show current tag for word under the cursor
nnoremap <silent> <leader>t <C-]>
nnoremap <silent> <leader>st <C-w><C-]>
" Show current tag list for word under the cursor
nnoremap <silent> <leader>tj g<C-]>
nnoremap <silent> <leader>stj <C-w>g<C-]>

let NERDTreeQuitOnOpen = 1
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

let g:SuperTabDefaultCompletionType = "<c-x><c-p>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-p>"
