" Configuration for NeoVim
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" IDE
Plug 'sbdchd/neoformat'
" HTML/CSS
Plug 'mattn/emmet-vim'
" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-fugitive'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'

" Execute code checks, find mistakes in the background
Plug 'neomake/neomake'

" Workspaces
Plug 'thaerkh/vim-workspace'

" Run :PlugInstall to add a new plug

" Colors
let NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors

call plug#end()
" remapping in terminal mode
tnoremap <Esc> <C-\><C-n>
imap ;; <Esc>
noremap <Ctrl-l> :nohlsearch
" check if buffer is terminal, if not, then add mapping
if &buftype ==# 'terminal'
else
        nmap <Space> :w <CR>
endif
nnoremap <C-p> :GFiles<CR>

" neomake
augroup localneomake
	autocmd! BufWritePost * Neomake
augroup end
let g:neomake_elixir_enabled_makers = ['credo_check']
function! NeomakeCredoErrorType(entry)
    if a:entry.type ==# 'F'      " Refactoring opportunities
      let l:type = 'W'
    elseif a:entry.type ==# 'D'  " Software design suggestions
      let l:type = 'I'
    elseif a:entry.type ==# 'W'  " Warnings
      let l:type = 'W'
    elseif a:entry.type ==# 'R'  " Readability suggestions
      let l:type = 'I'
    elseif a:entry.type ==# 'C'  " Convention violation
      let l:type = 'W'
    else
      let l:type = 'M'           " Everything else is a message
    endif
    let a:entry.type = l:type
endfunction
let g:neomake_elixir_credo_check_maker = {
        \ 'exe': 'mix',
        \ 'args': ['credo', 'list', '%:p', '--format=oneline'],
        \ 'errorformat': '[%t] %. %f:%l:%c %m,[%t] %. %f:%l %m',
        \ 'postprocess': function('NeomakeCredoErrorType')
        \ }
" deoplete
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" vim options
colorscheme desert
set noswapfile
set ruler
set clipboard=unnamed
" set cursor color for terminal
highlight TermCursor ctermfg=red guifg=red
" two spaces wide
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8
set noexpandtab " use tabs, not spaces
" ignore case when searching
set ignorecase
set number
" highlight current row and column
set cursorline
set cursorcolumn
" open split below and right
set splitbelow
set splitright
set title
set foldmethod=syntax

function! PhoenixWorkspace() 
    let wWidth = winwidth('%')
    vsplit term://mix test.watch --exclude integration --stale --trace
    set nonu
    vertical resize 60
    file test\ watch
    split term://iex -S mix phx.server
    set nonu
    file server
    resize 2
    " run phantomjs as webdriver model
    split term://phantomjs --wd
    set nonu
    " name it to phantomjs webdriver
    file phantomjs\ webdriver\ mode
    " resize to a smaller split
    resize 4
endfunction

function! PhoenixMinimal()
    vsplit | terminal
		split | terminal
		vertical resize -20
endfunction

function! ElixirWorkspace() 
    let wWidth = winwidth('%')
    vsplit | terminal mix test.watch --stale
    vertical resize 60
    file test\ watch
    split | terminal
    file iEx
endfunction

command! -register PhoenixWorkspace call PhoenixWorkspace()
command! -register PhoenixMinimal call PhoenixMinimal()
command! -register ElixirWorkspace call ElixirWorkspace()

" neoformat 
" enables us to specify some options for prettier npm package
let g:neoformat_try_formatprg = 1
augroup NeoformatAutoFormat
  autocmd!
  " escape space by using backslash, wasn't working when there were no spaces
  " at the end
  autocmd FileType javascript setlocal formatprg=prettier\ 
                                           \--stdin\ 
                                           \--print-width\ 80\ 
                                           \--single-quote\ 
                                           \--trailing-comma\ es5
  autocmd BufWritePre *.js Neoformat
augroup END

" vim-javascript
augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
augroup END

" Airline config
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
" let g:airline_left_sep = '>>'
" let g:airline_right_sep = '<<'
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
let g:airline_theme = 'xtermlight'

" Ignore .elixir_build
let g:ctrlp_custom_ignore = 'node_modules\|.DS_Store\|git|.elixir_ls'

" add documentation to js function
nmap <silent> <C-j> ?function<cr>:noh<cr><Plug>(jsdoc)

" network read write
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup TerminalStuff
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
