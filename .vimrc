" esc in insert & visual mode
inoremap kj <esc>

set nocompatible              " required
syntax on
filetype off                  " required
colorscheme gruvbox
set bg=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Set python indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Set auto indentation
Plugin 'vim-scripts/indentpython.vim'

" Flag unecessary white space
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 support
set encoding=utf-8

" Auto complete
Plugin 'Valloric/YouCompleteMe'

" GH copilot
Plugin 'github/copilot.vim'

let g:ycm_autoclose_preview_window_after_completion=0 "keep up help when opening parenthesis
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Check syntax on each save
Plugin 'vim-syntastic/syntastic'

"Check PEP 8
Plugin 'nvie/vim-flake8'

"Look pretty
let python_highlight_all=1
syntax on

"Colour schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'

"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif

"call togglebg#map("<F5>")

"File browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Searching
Plugin 'kien/ctrlp.vim'

"Line numbering
set nu

"Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Always show status (and therefore powerline)
set laststatus=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

