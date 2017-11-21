set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ===== Add custom plugins below this line =====
" GitGutter for Vim
Plugin 'airblade/vim-gitgutter'

" Syntax Files
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Editor Config
Plugin 'editorconfig/editorconfig-vim'

" CtrlP search
Plugin 'ctrlpvim/ctrlp.vim'

" Tree view file browser
Plugin 'scrooloose/nerdtree'

Plugin 'henrik/vim-indexed-search'


" Themes
Plugin 'flazz/vim-colorschemes'

" ===== Add custom plugins above this line =====

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===  Themes  ===
colorscheme spacegray

" Italicize comments
let g:spacegray_italicize_comments = 1

" Nerdtree settings
map <C-\> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Ctrl P Settings
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.?(git|hg|svn|node_modules|classes|build|dist)$',
  \ }


nnoremap j jzz
nnoremap k kzz

syntax on

set background=dark
set expandtab
set hlsearch
set mouse=a
set number
set relativenumber
set splitbelow
set splitright
set sts=2
set tabstop=2
set ttymouse=sgr

" Autorun configs
autocmd BufWritePre * %s/\s\+$//e

