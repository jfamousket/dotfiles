" source plugins
source ~/.config/nvim/plugins.vim

"devicons
set encoding=UTF-8

" vim-prettier
let g:prettier#quickfix_enabled = 1 
let g:prettier#quickfix_auto_focus = 1 

let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"run prettier on save
let g:prettier#autoformat = 1 
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

syntax enable
set autoindent
set number
set noshowmode
set ignorecase
set smartcase
set shiftwidth=4
set showmatch
set splitright
set splitbelow
set foldmethod=indent
set foldlevel=99
set mouse=a
set ruler
set laststatus=2
set nostartofline
set cursorline
set relativenumber
" always uses spaces instead of tab characters
set expandtab

" FZF config
let g:fzf_preview_window = 'left:50%'

" ctrlp ignore git files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set t_Co=256
set t_ut=

"""""""""""""""""""""""""""""""""""""""""
" From Coc Readme
"""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"""""""""""""""""""""""""""""""""""""""""
" End from Coc Readme
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

" Nerd commenter
filetype plugin on

" source coc config
source $HOME/.config/nvim/plug-config/coc.vim

" source global configs
source $HOME/.config/nvim/global.init.vim

" source markdown preview config
source $HOME/.config/nvim/markdown-config.vim

source $HOME/.config/nvim/line.vim

" source nord theme
source $HOME/.config/nvim/nord.vim
