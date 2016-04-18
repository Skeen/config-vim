" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
syntax on
filetype on
filetype plugin on
filetype indent on

" Work with logical lines, rather than actual lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=3

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Fix clipboard issues
set guioptions+=a
set clipboard=unnamedplus

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Turn on the WiLd menu
set wildmenu

" Enable syntax highlighting
syntax enable
colorscheme darkblue

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Show line numbers
set number

" Use % to jump to parenthesis
noremap % %

" Don't remember position in gitcommit files
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Use the system-wide clipboard
set clipboard=unnamedplus

" Handle plugins
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'kylef/apiblueprint.vim'
Plug 'sirtaj/vim-openscad'
Plug 'jpalardy/vim-slime'

call plug#end()

