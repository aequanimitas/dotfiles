" use Vim settings rather than Vi compatibility
set nocompatible

syntax on
filetype on
filetype plugin on

" general configuration
set number		" instead of tildes
set history=1000
set visualbell		" no sounds
set autoread		" reload file into buffer when changed outside vim. eg: sass compilation
set clipboard=unnamed " copy pasta

"if has("gui_running")
"  set background=dark
"  " let g:solarized_visibility = "high"
"  " let g:solarized_contrast = "high"
"  let g:solarized_termtrans = 1
"  colorscheme solarized
"endif

set visualbell				" be quiet

let mapleader=","

augroup markdown
  au BufRead,BufNewFile *.md set filetype=markdown
augroup END

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" disable arrow keys, hjkl all the way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
