""""""""""""""""""""
" PLUGINS
""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Distraction-free vim
Plug 'junegunn/goyo.vim',  { 'for': 'markdown' }

" Statusline/Tabline
Plug 'itchyny/lightline.vim'

" File system explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" NERDTree git flags
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Autocomplete
Plug 'valloric/youcompleteme'

" Syntax checking
Plug 'scrooloose/syntastic'

" Commenting
Plug 'scrooloose/nerdcommenter'

call plug#end()

""""""""""""""""""""
" INTERFACE 
""""""""""""""""""""

colorscheme wombat

" Line numbers
set number

" Relative line numbers
set relativenumber

" Status line always showing
set laststatus=2

" Removes the default mode indicator
set noshowmode

" No error sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""""""""""""""""""""
" MAPPINGS 
""""""""""""""""""""

map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""
" AUTO 
""""""""""""""""""""

" Start NERDTree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if it's the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
