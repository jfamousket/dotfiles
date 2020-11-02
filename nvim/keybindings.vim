""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keymaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove search highlight
nnoremap <leader><space> :nohlsearch<CR>
" reload nvim config 
nnoremap <leader>rs :source $MYVIMRC<CR>
" vifm open file in tab 
nnoremap <leader>ot :TabVifm<CR>
" save buffer and quit  
nnoremap <leader>qq :x<CR>
" // to search for selected text in visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" reload react native app  
nnoremap <silent> <leader>rr  :silent !adb shell input text "RR"<CR>
