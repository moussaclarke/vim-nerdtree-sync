if exists("g:loaded_nerdtree_sync") || &cp
  finish
endif

let g:loaded_nerdtree_sync = 4  " plugin version
let s:keepcpo = &cpo
set cpo&vim

if !exists('g:nerdtree_sync_excluded_patterns')
  let g:nerdtree_sync_excluded_patterns = ''
endif

function! s:isNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" calls NERDTreeFind if NERDTree is active, current window contains a modifiable file, and we're not in vimdiff or an excluded buffer
function! s:syncTree()
  if exists("g:nerdtree_sync_cursorline") && g:nerdtree_sync_cursorline == 1
    if &modifiable && s:isNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff && bufname('%') !~# 'NERD_tree' && (g:nerdtree_sync_excluded_patterns == '' || bufname('%') !~# g:nerdtree_sync_excluded_patterns)
      try
        NERDTreeFind
        if bufname('%') =~# 'NERD_tree'
          setlocal cursorline
          wincmd p
        endif
      endtry
    endif
  endif
endfunction

autocmd BufEnter * silent! call s:syncTree()

let &cpo = s:keepcpo
unlet s:keepcpo
