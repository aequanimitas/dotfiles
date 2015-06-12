set nocompatible
set visualbell
set number
set colorcolumn=92
set timeoutlen=1000 ttimeoutlen=0
filetype indent plugin on
syntax on

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

execute pathogen#infect()
set laststatus=2
set t_Co=256

" airline
let g:airline#extensions#tabline#enabled = 1

" mappings
map! ;; <Esc>
map <Space> :w <CR>

" for filetypes
au BufNewFile,BufRead *.scss set filetype=scss
au BufNewFile,BufRead *.md set filetype=markdown
