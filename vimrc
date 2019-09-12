" Section Plugin Manager {{{
 call plug#begin('~/.vim_plugins')

 Plug 'altercation/vim-colors-solarized'
 Plug 'elixir-editors/vim-elixir'
 Plug 'fatih/vim-go'
 Plug 'itchyny/lightline.vim'
 Plug 'leshill/vim-json'
 Plug 'pangloss/vim-javascript'
 Plug 'rizzatti/dash.vim'
 Plug 'slashmili/alchemist.vim'
 Plug 'vim-ruby/vim-ruby'
 Plug 'wakatime/vim-wakatime'
 Plug '/usr/local/opt/fzf'
 Plug 'junegunn/fzf.vim'
 Plug 'tpope/vim-sleuth'

 call plug#end()
" }}}

filetype plugin indent on
syntax enable
runtime macros/matchit.vim
let mapleader =" "

"Section UI {{{
"
colorscheme solarized
set ruler
set colorcolumn=80
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/*,*/tmp/*
set wildmode=list:longest,full
set wildignorecase
set scrolloff=5
set showcmd
set showmode
set laststatus=2
set number
set cursorline
set visualbell
set undolevels=10000
set diffopt+=vertical
set backspace=indent,eol,start
nnoremap <Leader>dd :set background=dark<Cr>
nnoremap <Leader>ll :set background=light<Cr>
nmap <leader>ii :set list!<CR>
"}}}
"Section Folding {{{
set foldmethod=indent
set foldlevel=50
" }}}
" Section Files {{{
set noswapfile
set nobackup
set history=5000
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
    set guifont=Fira\ Code\ Retina:h13
    set macligatures
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=999
    set columns=9999
endif
" }}}
"Section White Space {{{
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list listchars=tab:»·,trail:·,nbsp:·
" }}}
"Section Windows {{{
set splitright
set splitbelow
"}}}
" Section Plugins{{{
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" Section  FZF {{{
nnoremap <C-p> :Files<Cr>
nnoremap <C-e> :History<Cr>
" }}}
" Section  Dash {{{
nmap <silent> <leader>d <Plug>DashSearch
" }}}
" Section File Types{{{
" Section Html {{{
let g:html_indent_tags = 'li\|p'
" }}}
" Section Markdown {{{
autocmd FileType markdown setlocal spell
" }}}
" Section Txt {{{
autocmd FileType txt setlocal spell
" }}}
" Section Git {{{
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit setlocal textwidth=80
" }}}

