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

" Snippets
NeoBundle "http://github.com/gmarik/snipmate.vim.git"

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

" NeoBundle "http://github.com/scrooloose/nerdtree.git"
NeoBundle "git://git.wincent.com/command-t.git"
NeoBundle "Shougo/vimfiler"

NeoBundle "Shougo/neocomplcache"
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/vimshell"
NeoBundle "Shougo/vimproc"

" Run script quickly : Quickrun
NeoBundle "thinca/vim-quickrun"

" NeoBundle "fuenor/qfixhowm"
NeoBundle "fuenor/qfixgrep"
" }}} Plugins

NeoBundleCheck " Check plugins installation

" Load plugin vimrc files
let s:bundles = neobundle#config#get_neobundles()
for bundle in s:bundles
  if filereadable(expand('~/.vim/config/plugin/' . bundle.name . '.vimrc'))
    exe 'source' ('~/.vim/config/plugin/' . bundle.name . '.vimrc')
  endif
endfor

filetype plugin indent  on " Automatically detect file types.

" Load Basic setting
if filereadable(expand('~/.vim/config/basic.vimrc'))
  source ~/.vim/config/basic.vimrc
endif
