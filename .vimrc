" Eschew compatibility with vi
set nocompatible

" Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set .viminfo... info
set viminfo=%,'50,\"100,:100,n~/.vim/.viminfo

" Retain more history
set history=500

" Set colorscheme
colorscheme solarized
set background=dark

" Easily identify when lines are more than 80 characters
set colorcolumn=80

" Detect filetypes and syntax
filetype plugin indent on
syntax on

" Backspace over everything
set backspace=indent,eol,start

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

" Configure pick
map <leader>p :call PickFileTab()<cr>

" Set autocmds
autocmd BufRead,BufNewFile *.text set filetype=text

autocmd FileType eruby,html,ruby,yaml set autoindent expandtab shiftwidth=2 softtabstop=2
autocmd FileType gitcommit set spell textwidth=68
autocmd FileType text setlocal spell
