" Section Plugin Manager {{{
 call plug#begin('~/.vim_plugins')

 Plug 'altercation/vim-colors-solarized'
 Plug 'elixir-editors/vim-elixir'
 Plug 'fatih/vim-go'
 Plug 'vim-ruby/vim-ruby'
 Plug 'leshill/vim-json'
 Plug 'pangloss/vim-javascript'

 Plug 'rizzatti/dash.vim'
 Plug 'wakatime/vim-wakatime'
 Plug 'tpope/vim-sleuth'
 Plug 'mileszs/ack.vim'
 Plug 'dense-analysis/ale'
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
colorscheme solarized
set lazyredraw
set ruler
set colorcolumn=80,120
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
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
   set background=dark
else
  set background=light
endif
nmap <leader>ii :set list!<CR>
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
    set guifont=JetBrains\ Mono:h13
    set macligatures
    let macvim_hig_shift_movement=1
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

" Section Explorer {{{
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
" }}}

" Section  FZF {{{
nnoremap <C-p> :Files<Cr>
nnoremap <C-e> :History<Cr>
nnoremap <leader>mm :Marks<Cr>
nnoremap <leader>tt :Tags<Cr>
let g:fzf_layout = { 'window': { 'width': 0.85, 'height': 0.5 } }
" }}}

" Section  Statusline {{{
set statusline=
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\                       "Spellanguage
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
" }}}
