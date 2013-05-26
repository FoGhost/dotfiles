syntax enable
syntax on

" Maplearder
let mapleader = ","

" Key map timeout
let timeoutlen             = 3000

" :colorscheme evening
set background=dark
colorscheme solarized

set cf  " Enable error files & error jumping.
set clipboard=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set ambiwidth=double
set nocp incsearch
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set smartindent
set expandtab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list

" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
if has("mouse")
 set mouse=a  " Mouse in all modes
endif

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html
autocmd User Rails Rnavcommand fabricator spec/fabricators -suffix=_fabricator.rb -default=model() " Fabrication support

" Shortcuts
" " Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>

" Quick switch files among <previous, current, next> files
map <right> :bn<cr>
map <left> :bp<cr>
map <space> :b#<cr>

" Specify filetyps
autocmd BufNewFile,BufRead *.vimrc set filetype=vim

" vim-rails autocommand
autocmd User Rails silent! Rnavcommand worker app/workers -glob=**/* -suffix=

" Change which file opens after executing :Rails command
let g:rails_default_file   = 'config/database.yml'
