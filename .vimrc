
set nocompatible

execute pathogen#infect()

syntax on

let g:Powerline_symbols = 'fancy'

filetype plugin indent on

let mapleader = ','

set encoding=utf-8

set showcmd
set showmode

set backspace=indent,eol,start

set complete=.,t

set showmatch
set smarttab
set autoindent
set nrformats-=octal

set incsearch
set hlsearch
set hidden


set wildmenu
set wildmode=list:longest


set ignorecase
set smartcase

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//  " Keep swap files in one location
set backupdir=$HOME/.vim/bck//  " Keep swap files in one location

set number
set ruler

set title

set tabstop=2
set shiftwidth=2
set expandtab
set list

set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

set laststatus=2

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set t_Co=256
color vividchalk

" Vimux Integration
let g:VimuxUseNearestPane=1
let g:vroom_use_vimux=1

" Mappings
map <leader>nt :NERDTreeToggle<cr>
map <leader>nh :nohls<cr>
map <leader>tb :TagbarToggle<cr>
map <leader>pc :VimuxPromptCommand<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let g:UltiSnips = {}

let g:UltiSnips.snipmate_ft_filter = {
            \ 'default' : {'filetypes': ["FILETYPE"] },
            \ 'ruby'    : {'filetypes': ["ruby", "ruby-rails", "ruby-1.9"] },}

autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal foldmethod=syntax shiftwidth=2 tabstop=2
