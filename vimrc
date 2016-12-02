set nocompatible
set visualbell
set number
set colorcolumn=92
set timeoutlen=1000 ttimeoutlen=0

" force write directly to the file instead of writing to a new one, HMR not
" firing automatically (webpack)
" https://github.com/webpack/webpack/issues/781#issuecomment-95523711
set backupcopy=yes
colorscheme koehler
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
" global mappings
map! ;; <Esc>
map <Space> :w <CR>
map ,wt :silent !printf '\033k%\033\\'<cr> :redraw!<cr>

" write then reload file
map ,r  :w \| :e!<cr>

" for tabs
nnoremap tbn :tabnew<Space>
nnoremap tn :tabnext<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>

" for splits
map <C-l> <C-W>l
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k

" for elixir
map ,et :w \|:!mix test<cr>
map ,re :w \|:!iex -S mix<cr>

" for filetypes
au BufNewFile,BufRead *.scss set filetype=scss
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.toml set filetype=toml
au BufNewFile,BufRead *.hbs set filetype=handlebars
au FileType javascript setlocal shiftwidth=2 tabstop=2
au FileType scss setlocal shiftwidth=2 tabstop=2
au FileType toml setlocal shiftwidth=4 tabstop=4
au FileType json setlocal shiftwidth=2 tabstop=2 expandtab
au FileType handlebars setlocal shiftwidth=2 tabstop=2 expandtab

command! -nargs=+ Silent execute 'silent <args>' | redraw! | copen

" ignore directories for ctrl+p
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|png|jpg))$'
