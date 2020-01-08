set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'shime/vim-livedown'           , {'for': 'markdown'}
Plug 'plasticboy/vim-markdown'      , {'for': 'markdown'}
Plug 'neoclide/coc.nvim'            , {'branch': 'release'}
Plug 'tpope/vim-fugitive'
call plug#end()
