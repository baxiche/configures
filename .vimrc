let mapleader = ","
filetype plugin indent on
set backspace=indent,eol,start
set cscopetag
set path+=/usr/include
set path+=**

set tags+=tags
set tags+=$HOME/sdbusplus/include/sdbusplus/tags
set tags+=$HOME/systemd/tags
set tags+=$HOME/pldm/tags
set tags+=$HOME/mctp/tags
set tags+=$HOME/linux_headers/glibc/tags
set tags+=$HOME/linux_headers/kernel/tags
"set tags+=$HOME/tmp/pldm/tags
set tags+=/home/baxiche/libpldm/tags
set tags+=$HOME/phosphor-objmgr/tags
set tags+=$HOME/libmctp/tags
set tags+=$HOME/sdeventplus/src/sdeventplus/tags
set tags+=$HOME/openbmc/build/yosemite4/workspace/sources/systemd/src/systemd/tags;/
set complete-=i

vmap <leader>y y:new /tmp/vimcopy<CR>VGp:x<CR>
nmap <leader>y : .w! /tmp/vimcopy<CR>
vmap <leader>x x:new /tmp/vimcopy<CR>VGp:x<CR>
nmap <leader>x : .w! /tmp/vimcopy<CR>
nmap <leader>v :r /tmp/vimcopy<CR>

inoremap jj <Esc>
command! -nargs=0 F echo expand('%:p')
set statusline+=%F

set pastetoggle=<F3>
set ai hlsearch 
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
"set expandtab
set nu rnu
set clipboard=unnamed
set incsearch ruler
set noswapfile


set term=xterm-256color
set background=dark
"colorscheme rosepine
