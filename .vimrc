" Eschew compatibility with vi
set nocompatible

" Load vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set .viminfo... info
set viminfo=%,'50,\"100,:100,n~/.vim/.viminfo

" Retain more history
set history=10000

" Don't keep backups or swaps
set nobackup noswapfile nowritebackup

" Set colorscheme
color badwolf
let g:badwolf_darkgutter=1
let g:badwolf_tabline=0

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

" Use more natural split locations
set splitbelow splitright

" Show cursor positioning, incomplete commands
set ruler showcmd

" Leader key maps
let mapleader = ","
map <leader>w :w<cr>

" Configure vim-rspec
let g:rspec_command = "!time ./bin/rspec --format=documentation {spec}"
map <leader>t :w<cr>:call RunCurrentSpecFile()<cr>
map <leader>s :w<cr>:call RunNearestSpec()<cr>
map <leader>l :w<cr>:call RunLastSpec()<cr>
map <leader>a :w<cr>:call RunAllSpecs()<cr>

" Configure pick
map <leader>p :call PickFileTab()<cr>

" Set autocmds
autocmd BufRead,BufNewFile *.text set filetype=text

autocmd FileType coffee,eruby,html,ruby,yaml set autoindent expandtab shiftwidth=2 softtabstop=2
autocmd FileType gitcommit setlocal spell textwidth=68 colorcolumn=69
autocmd FileType text setlocal spell
