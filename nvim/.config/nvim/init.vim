set shell=/bin/bash
set nocompatible

filetype on
filetype plugin on
filetype indent on

set path+=**
set wildmenu

set clipboard+=unnamedplus

syntax enable
set showmatch
set ignorecase 
set smartcase
set laststatus=2
set background=dark
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"set mouse=v "redunt yo'
set hlsearch
set incsearch
set hidden
set backspace=indent,eol,start
set autoindent 
set relativenumber
set number
set wildmode=longest,list
set cc=80
filetype plugin indent on
set mouse=a
set clipboard=unnamedplus
filetype plugin on 
set cursorline
"set ttyfast "removed at this point
set noswapfile
set backupdir=~/.cache/vim 
set noerrorbells visualbell t_vb=
set scrolloff=8

"Tabstuff
set shiftwidth=4
set tabstop=4 
set softtabstop=4 
set expandtab

call plug#begin()

"Plugin Section
"Themes
Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'Mangeshrex/uwu.vim'
Plug 'FrenzyExists/aquarium-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'sonph/onehalf'
Plug 'sainnhe/edge'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'pacokwon/onedarkhc.vim'
Plug 'AlessandroYorba/Alduin'


Plug 'ryanoasis/vim-devicons'

"Snippets 
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

"Nerdstuff
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify' "landing page 
""Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'nvim-lua/completion-nvim'
"Plug 'ms-jpq/coq_nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"Surrounding elements
Plug 'tpope/vim-surround'
Plug 'eluum/vim-autopair'

"Plug 'reconquest/vim-autosurround'

"Primeagen stuff 
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'ThePrimeagen/vim-be-good' "uknowdis

" Markdown stuff
""Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()

" luafile ~/.config/nvim/lsp_config.lua

" let g:vim_be_good_log_file = 1
colorscheme tokyonight

"let g:airline_theme = 'tokyonight'
let g:airline_powerline_fonts = 1


"Alduin config, uncomment if needed
"let g:alduin_Shout_Dragon_Aspect = 1 "Almost black background
"let g:alduin_Shout_Become_Ethereal = 1 "Black background
"let g:alduin_Shout_Fire_Breath = 1 "Adds deep red color for special highlight
"let g:alduin_Shout_Aura_Whisper = 1 "Removes block matchparens, adds underline


"Split pane behaviour
set splitright
set splitbelow

"Move between split panes 
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 

"Move split panes "Doesn't work yo'
nnoremap <A-h> <A-w>h
nnoremap <A-j> <A-w>j
nnoremap <A-k> <A-w>k
nnoremap <A-l> <A-w>l

"Remap
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Add python running stuff
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"autocmd FileType python nnoremap <buffer> <F5> :w<CR>:ter python3 "%"<CR>
"autocmd FileType python nnoremap <buffer> <F6> :w<CR>:vert ter python3 "%"<CR>

