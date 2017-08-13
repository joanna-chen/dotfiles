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
Plug 'Xuyuanp/nerdtree-git-plugin'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Autocomplete
Plug 'valloric/youcompleteme'

" Syntax checking
Plug 'scrooloose/syntastic'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Git plugin
Plug 'tpope/vim-fugitive'

" Surrounding stuff
Plug 'tpope/vim-surround'

call plug#end()

""""""""""""""""""""
" INTERFACE 
""""""""""""""""""""

colorscheme onedark

let g:lightline = {
	\'colorscheme': 'seoul256',
    \}

set number                              " line numbers
set relativenumber                      " relative line numbers
set laststatus=2                        " status line always showing
set noshowmode                          " removes the default mode indicator
set noerrorbells visualbell t_vb=       " no error sounds
set showcmd                             " show the keys pressed
set nobackup                            " there are better version control options
set noswapfile                          " no more swap file
set tabstop=4                           " a tab is four spaces
set softtabstop=4                       " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                           " expand tabs by default (overloadable per file type later)
set shiftwidth=4                        " number of spaces to use for autoindenting
set shiftround                          " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start          " allow backspacing over everything in insert mode
set autoindent                          " always set autoindenting on
set copyindent                          " copy the previous indentation on autoindenting
set showmatch                           " set show matching parenthesis
set ignorecase                          " ignore case when searching
set smartcase                           " ignore case if search pattern is all lowercase,
                                        "    case-sensitive otherwise
set smarttab                            " insert tabs on the start of a line according to
                                        "    shiftwidth, not tabstop
set scrolloff=4                         " keep 4 lines off the edges of the screen when scrolling
set hlsearch                            " highlight search terms
set incsearch                           " show search matches as you type
set gdefault                            " search/replace "globally" (on a line) by default
set history=1000                        " remember more commands and search history
set undolevels=1000                     " use many muchos levels of undo

""""""""""""""""""""
" MAPPINGS 
""""""""""""""""""""

let mapleader="\<space>"
map <C-n> :NERDTreeToggle<CR>

" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

""""""""""""""""""""
" AUTO 
""""""""""""""""""""

" Start NERDTree if no file is specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if it's the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" No bells
autocmd GUIEnter * set visualbell t_vb= 
