set nocompatible
set visualbell
set number
set colorcolumn 80
set timeoutlen=1000 ttimeoutlen=0
syntax on

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

execute pathogen#infect()
set laststatus=2
set t_Co=256
