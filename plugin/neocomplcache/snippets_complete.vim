"=============================================================================
" FILE: snippets_complete.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu@gmail.com>
" Last Modified: 17 Oct 2012.
"=============================================================================

if exists('g:loaded_neocomplcache_snippets_complete')
  finish
endif

" Warnings
echohl WarningMsg
echomsg 'This is old version of neocomplcache-snippets-complete.'
echomsg 'This is no longer maintained.'
echomsg 'You should use neosnippet plugin instead of it.'
echomsg 'https://github.com/Shougo/neosnippet'
echohl None

let s:save_cpo = &cpo
set cpo&vim

" Add commands."{{{
command! -nargs=? -complete=customlist,neocomplcache#filetype_complete
      \ NeoComplCacheEditSnippets
      \ call neocomplcache#sources#snippets_complete#edit_snippets(<q-args>, 0)
command! -nargs=? -complete=customlist,neocomplcache#filetype_complete
      \ NeoComplCacheEditRuntimeSnippets
      \ call neocomplcache#sources#snippets_complete#edit_snippets(<q-args>, 1)
"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_neocomplcache_snippets_complete = 1

" vim: foldmethod=marker
