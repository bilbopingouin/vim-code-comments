"==============================================================================
" Comment line by line with comments that adapts to type of code
"==============================================================================
" Author: bilbo pingouin
" Original date: 04.11.2014
" Modification history:
"    Date   |  Name        | Comments
"  ---------|--------------|-------------------------------
"           |              |
"==============================================================================
" Available commands:
"  <leader>c           -- add comment on line (or all selected lines)
"  <leader>u           -- remove previously added comments
"==============================================================================
" Note
"  
"==============================================================================



" un/comment in Visual
let g:comment_leader = '# ' " default value
au FileType vim	          let g:comment_leader = '" '
au FileType c,css         let g:comment_leader = '// '
au FileType cpp           let g:comment_leader = '// '
au FileType sh,make       let g:comment_leader = '# '
au FileType tex,plaintex  let g:comment_leader = '% '
au FileType vhdl          let g:comment_leader = '-- '
au FileType python        let g:comment_leader = '# '
au FileType ruby          let g:comment_leader = '# '
au FileType javascript    let g:comment_leader = '// '
au FileType gnuplot       let g:comment_leader = '# '
au FileType octave        let g:comment_leader = '# '

noremap <leader>c : <C-B>sil <C-E>s/^/<C-R>=escape(g:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <leader>u : <C-B>sil <C-E>s/^\V<C-R>=escape(g:comment_leader,'\/')<CR>//e<CR>:noh<CR>

