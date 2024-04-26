set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on


colorscheme sonokai

set number
set relativenumber 


set shiftwidth=4
set tabstop=4

set nobackup

set nowrap

set hlsearch
set incsearch
set ignorecase
set incsearch

set smartcase

set showmode
set showcmd


set history=1000

set wildmenu
set wildmode=list:longest


call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'sainnhe/sonokai'
call plug#end()


nnoremap <leader>n :NERDTreeFocus<CR>
let NERDTreeShowHidden=0




" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\%l\ col:\%c\ percent:\%p%%

" Show the status on the second to last line.
set laststatus=2

