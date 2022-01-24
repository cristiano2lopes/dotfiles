" Section Plugin Manager {{{
 call plug#begin('~/.vim_plugins')

 Plug 'altercation/vim-colors-solarized'
 Plug 'itchyny/lightline.vim'
 Plug 'editorconfig/editorconfig-vim'

 Plug 'sheerun/vim-polyglot'

 Plug 'tpope/vim-fugitive'
 Plug 'ludovicchabant/vim-gutentags'

 Plug 'rizzatti/dash.vim'

 Plug 'junegunn/fzf'
 Plug 'junegunn/fzf.vim'


 call plug#end()
" }}}

set nocompatible
filetype plugin indent on
syntax enable
runtime macros/matchit.vim

"Section UI {{{
"
let mapleader = " "
colorscheme solarized
set lazyredraw
set ttyfast
set ruler
set colorcolumn=80,120
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/*,*/tmp/*
set wildmode=list:longest,full
set wildignorecase
set scrolloff=5
set showcmd
set noshowmode
set laststatus=2
set number
set numberwidth=4
set cursorline
set visualbell
set undolevels=10000
set diffopt+=vertical
set backspace=indent,eol,start
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
   set background=dark
else
  set background=light
endif
nnoremap <Leader>dd :set background=dark<Cr>
nnoremap <Leader>ll :set background=light<Cr>
"}}} 
"Section Folding {{{
set foldmethod=indent
set foldlevel=50
" }}}
" Section Files {{{
set noswapfile
set nobackup
set history=10000
set hidden
set autoread
set fileformats=unix,dos,mac
set encoding=utf-8
set tags=./tags;$HOME
set undofile
set undodir=$HOME/.vim_files
nnoremap <leader><leader> <c-^>
" }}}
" Section Search {{{
set showmatch
set incsearch
set hlsearch
set smartcase
set ignorecase
nnoremap / /\v
vnoremap / /\v
nnoremap <leader>/ :noh<cr>
" }}}
" Section GUI{{{
if has('gui_running')
    set guifont=Monaco:h14
    let macvim_hig_shift_movement=1
    set guioptions=
endif
" }}}
"Section White Space {{{
set autoindent
set cindent
set smartindent
" }}}
"Section Windows {{{
set splitright
set splitbelow
"}}}
" Section Plugins{{{
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" Section  Dash {{{
nmap <silent> <leader>d <Plug>DashSearch
" }}}
" Section File Types{{{
" Section Html {{{
let g:html_indent_tags = 'li\|p'
" }}}
" Section Markdown {{{
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell
" }}}
" Section Txt {{{
autocmd FileType txt setlocal spell
" }}}
" Section Git {{{
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit setlocal textwidth=80
" }}}
" Section Ansible {{{
au BufRead,BufNewFile *playbook*.yml set filetype=yaml.ansible
" }}}

" Section  FZF {{{
nnoremap <C-p> :Files<Cr>
nnoremap <C-e> :History<Cr>
nnoremap <leader>mm :Marks<Cr>
nnoremap <leader>tt :Tags<Cr>
" }}}
set exrc
set secure
