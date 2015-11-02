set nocompatible

 if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('~/.vim/bundle/'))

" }}} Plugins
" Programming
NeoBundle "jQuery"
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-haml"
NeoBundle "kchmck/vim-coffee-script.git"
NeoBundle 'briancollins/vim-jst'
NeoBundle 'fatih/vim-go'

" Snippets
" NeoBundle "http://github.com/gmarik/snipmate.vim.git"

" Instant-Markdown
" NeoBundle "http://github.com/suan/vim-instant-markdown.git"
"
" Syntax highlight
" NeoBundle "cucumber.zip"
" NeoBundle "Markdown"
"
" Git integration
NeoBundle "fugitive.vim"
"
" " (HT|X)ml tool
" NeoBundle "ragtag.vim"

" " ColorSchema
NeoBundle "http://github.com/altercation/vim-colors-solarized.git"

" " Utility
NeoBundle "repeat.vim"
NeoBundle "surround.vim"
NeoBundle "Align"
NeoBundle "http://github.com/rking/ag.vim.git"

" NeoBundle "http://github.com/scrooloose/nerdtree.git"
NeoBundle "git://git.wincent.com/command-t.git"
NeoBundle "Shougo/vimfiler"

NeoBundle "Shougo/neocomplcache"
NeoBundle "Shougo/neosnippet"
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/vimshell"
NeoBundle "Shougo/vimproc"
NeoBundle 'Shougo/neocomplcache-rsense'

" Run script quickly : Quickrun
NeoBundle "thinca/vim-quickrun"

NeoBundle "fuenor/qfixhowm"
NeoBundle "fuenor/qfixgrep"
" }}} Plugins

NeoBundleCheck " Check plugins installation

" Load plugin vimrc files
" let s:bundles = neobundle#config#get_neobundles() 
" <- NG can not control the loading order;

let s:bundle_names = [
  \ "vim-colors-solarized",
  \ "surround.vim",
  \ "repeat.vim",
  \ "Align",
  \ "vim-coffee-script",
  \ "vim-jst",
  \ "vim-haml",
  \ 'jQuery',
  \ "vim-rails",
  \ "fugitive.vim",
  \ "vim-quickrun",
  \ "qfixhowm",
  \ "qfixgrep",
  \ 'snipmate.vim',
  \ 'unite.vim',
  \ 'vimproc',
  \ "command-t",
  \ "vimfiler",
  \ "vimshell",
  \ "neocomplcache",
  \ "neosnippet"
  \ ]
for bundle_name in s:bundle_names
  if filereadable(expand('~/.vim/config/plugin/' . bundle_name . '.vimrc'))
    exe 'source' ('~/.vim/config/plugin/' . bundle_name . '.vimrc')
  endif
endfor

filetype plugin indent  on " Automatically detect file types.

" Set $RSENSE_HOME path.
let g:neocomplcache#sources#rsense#home_directory = '/usr/local/opt/rsense-0.3'

" Load Basic setting
if filereadable(expand('~/.vim/config/basic.vimrc'))
  source ~/.vim/config/basic.vimrc
endif
