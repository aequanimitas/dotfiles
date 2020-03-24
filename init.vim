" Configuration for NVIM
call plug#begin()

" ctrl-p
Plug 'kien/ctrlp.vim'
" Install compilation dependecies first: https://github.com/ycm-core/YouCompleteMe
" This also takes some time to compile
" You also need to run "./install.py", located inside YCM folder
Plug 'Valloric/YouCompleteMe'
" For elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
" For editor color
Plug 'phanviet/vim-monokai-pro'
Plug 'micha/vim-colors-solarized'

" List ends here, plugins available after this call
" You also need to run :PlugInstall
call plug#end()

" remap space bar to write file
nnoremap <space> :w<CR>

set number
set foldmethod=syntax
colorscheme monokai_pro
syntax on

" no line numbers when using terminal
" augroup TerminalStuff
"    au! " Clear old autocommands
"   autocmd TermOpen * setlocal nonumber norelativenumber
" augroup END
au TermOpen * setlocal nonumber norelativenumber
