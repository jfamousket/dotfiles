" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://github.com/kevinoid/vim-jsonc
Plug 'kevinoid/vim-jsonc'

" https://github.com/HerringtonDarkholme/yats.vim
Plug 'HerringtonDarkholme/yats.vim'

" https://github.com/vifm/vifm.vim
Plug 'vifm/vifm.vim'

"https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

"https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'ryanoasis/vim-devicons'

" https://github.com/co1ncidence/javacafe.vim
Plug 'co1ncidence/javacafe'
Plug 'ap/vim-css-color'

"https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'

"https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

"https://github.com/liuchengxu/vim-which-key
Plug 'liuchengxu/vim-which-key'

"https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

"https://github.com/preservim/tagbar
Plug 'majutsushi/tagbar'

"https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" markdown preview https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" nord theme
Plug 'arcticicestudio/nord-vim'

" Make sure you use single quotes
" Initialize plugin system
call plug#end()
