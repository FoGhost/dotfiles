" NeoComplcache Setting

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
"
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Disable auto popup
" let g:neocomplcache_disable_auto_complete = 1

"  Print caching percent in statusline.
" let g:NeoComplCache_CachingPercentInStatusline = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ 'scala' : $DOTVIM.'/dict/scala.dict',
    \ 'ruby' : $DOTVIM.'/dict/ruby.dict'
    \ }

" snippet ファイルの保存先
let g:neocomplcache_snippets_dir='~/.vim/snippets'

" Define keyword.
if !exists('g:NeoComplCache_KeywordPatterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Popup on <Tab>.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
function! s:check_back_space()"{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}
" Auto complete to common string and show available variants (if any).
inoremap <expr><C-l> neocomplcache#complete_common_string()
" Highlighting first candidate.
let g:neocomplcache_enable_auto_select = 1
inoremap <expr><C-h> neocomplcache#smart_close_popup().“\<C-h>”
inoremap <expr><BS> neocomplcache#smart_close_popup().“\<C-h>”

" Choose candidate with <CR>.
inoremap <expr><CR> neocomplcache#smart_close_popup() . “\<CR>”

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
" let g:neocomplcache_enable_auto_select = 1
"
" Shell like behavior(not recommended).
" set completeopt+=longest
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_disable_auto_complete = 1
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" " Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_force_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

inoremap pumvisible() ? neocomplcache#close_popup().“\X\” : “\X\”
