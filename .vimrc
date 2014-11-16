" Eschew compatibility with vi
set nocompatible

" Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set .viminfo... info
set viminfo=%,'50,\"100,:100,n~/.vim/.viminfo

" Set colorscheme
colorscheme solarized
set background=dark

" Detect filetypes and syntax
filetype plugin indent on
syntax on

" Show hidden characters
set list listchars=trail:•

" Use relative numbering
set nonumber relativenumber

" Show cursor positioning, incomplete commands
set ruler showcmd

" Leader key maps
let mapleader = ","
map <leader>w :w<cr>

" Configure vim-rspec
let g:rspec_command = "!time ./bin/rspec {spec}"
map <leader>t :w<cr>:call RunCurrentSpecFile()<cr>
map <leader>s :w<cr>:call RunNearestSpec()<cr>
map <leader>l :w<cr>:call RunLastSpec()<cr>
map <leader>a :w<cr>:call RunAllSpecs()<cr>

" Set autocmds
autocmd FileType ruby set autoindent sw=2 sts=2 expandtab
