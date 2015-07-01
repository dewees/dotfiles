set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'AutoComplPop'
Plugin 'Rainbow-Parenthesis'
Plugin 'surround.vim'
Plugin 'tpope/vim-sensible'
Plugin 'github-theme'
Plugin 'jsantell/AcidCupcakeColourScheme'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu
colorscheme acidcupcake 
"TODO fix set list, tabs for spaces

"NAVIGATION 
map <C-l> :call MoveRight()<CR>
map <C-h> :call MoveLeft()<CR>
map <C-k> :tabnew<CR>
map <C-j> :call Close()<CR> 

function! MoveLeft()
if winnr() == 1
tabp
else
wincmd h
endif
endfunction

function! MoveRight()
if winnr('$') == winnr()
tabn
else
wincmd l
endif
endfunction

function! Close()
if winnr('$') == 1
q
else
wincmd q
endif
endfunction
