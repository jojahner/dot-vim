call pathogen#infect()
call pathogen#helptags()

syntax on
filetype indent plugin on

let g:fuzzy_roots = ["app", "config", "db", "lib", "test", "spec", "script"]
let g:fuzzy_ceiling = 20000
let g:fuzzy_ignore = "tags, *.jpg, *.gif, *.png, .git/**/*, tmp/**/*, log/**/*"
" let g:fuzzy_path_display = 'path'

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

set shiftwidth=2 
set softtabstop=2 
set expandtab

set smartcase 
set autoindent
set smartindent

if has("gui_running")
  set guioptions-=T
  set guifont=Menlo:h13
endif
 
"colorscheme Tomorrow-Night-Eighties
"
syntax enable
set background=light
colorscheme solarized
 
set laststatus=2

let mapleader = ","
map <leader>t :CommandT<CR>
map <leader>z :FuzzyFinderFile<CR>

map <F4> :TagbarOpenAutoClose<CR>

map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

function IndentV()
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction
map <Leader>iv :call IndentV()<cr>
