let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

set nocompatible
filetype plugin on

call plug#begin("~/.nvim/bundle")
" Plugin List
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/MatchTagAlways'
Plug 'jlanzarotta/bufexplorer'
Plug 'bigeagle/molokai'
Plug 'bling/vim-airline'
Plug 'hkupty/nvimux'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

Plug 'vim-scripts/DrawIt'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'embear/vim-localvimrc'
Plug 'mbbill/undotree'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

Plug 'mattn/emmet-vim'
Plug 'hdima/python-syntax'
Plug 'hynek/vim-python-pep8-indent'
Plug 'fatih/vim-go'
Plug 'lervag/vim-latex'
Plug 'kchmck/vim-coffee-script'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-fugitive'
Plug 'sudar/vim-arduino-syntax'
Plug 'zaiste/tmux.vim'
Plug 'elzr/vim-json'
Plug 'lepture/vim-jinja'
Plug 'cespare/vim-toml'
Plug 'mxw/vim-jsx'
Plug 'groenewege/vim-less'
Plug 'isRuslan/vim-es6'
Plug 'bigeagle/sieve.vim'
Plug 'posva/vim-vue'
Plug 'google/vim-ft-bzl'
Plug 'mhartington/nvim-typescript'
Plug 'leafgarland/typescript-vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'

Plug 'roxma/ncm-clang'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-bufword'

Plug 'Shougo/echodoc.vim'
Plug 'davidhalter/jedi-vim'

Plug 'caio/querycommandcomplete.vim'
Plug 'justinmk/vim-gtfo'
Plug 'freitass/todo.txt-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'rainglow/vim'

Plug 'phildawes/racer'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-clang'
Plug 'tweekmonster/deoplete-clang2'

call plug#end()


let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:airline#extensions#ale#enabled = 1

let NERDTreeMinimalUI = 1

let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

set nonumber
"set nu
"colorscheme Iceberg 
colorscheme apprentice 
set showmatch 
syntax enable
set background=dark
set mouse=a
syntax on
set hlsearch
set ignorecase
set smartcase
set incsearch
set statusline=[%n]\ %F%m%r%h\ %w\ \ %=\ %c,%l\ \|\ %L 
set laststatus=2
set linespace=3
set termguicolors

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
map <C-k> :call fzf#vim#ag(expand('<cword>')) -U -G "src/*"<CR>
map <C-g> :NERDTreeFind<CR>
map <leader><C-g> :NERDTreeToggle<CR>
map <leader><C-g><C-l> :NERDTreeFocus<CR>
map <leader><C-w> :NERDTreeCWD<CR>
map <leader>t :terminal<CR>
map <leader><C-f> :ALEFix<CR>
map <leader><C-n> :tabnew<CR>
map <leader>e :nohlsearch<CR>
map <leader>p :Files<CR>
map <leader>l :GFiles<CR>
map <leader>g :GFiles?<CR>
map <leader>b :Buffers<CR>
map <leader><C-i> :Buffers<CR>
map <leader><C-s> :w<CR>
map <leader><C-r> :edit<CR>
map <leader><C-x> :nohlsearch<CR>

map <leader><C-g><S-r> :GoRef<CR>
map <leader><C-g><S-d> :GoDef<CR>
map <leader><C-g><S-s> :GoDefPop<CR>
map <leader><C-g><S-c> :GoCallees<CR>
map <leader><C-g><S-e> :GoCallers<CR>
map <leader><C-g><S-b> :GoBuild<CR>
map <leader><C-g><v> :GoVet<CR>
nmap <leader><S-o> :TagbarToggle<CR>

map <leader>w :call fzf#vim#ag(expand('<cword>'))<CR>
map <leader>r :call fzf#vim#ag(GetSelectedText())<CR>
let g:fzf_files_options = '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
inoremap <CapsLock> <ESC>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='base16'

let g:ale_fixers = {
\   'javascript': ['standard']
\}

let g:ale_linters = {
\   'javascript': ['standard'],
\   'go': ['gofmt'],
\}

" Tabs
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set autoindent
set rtp+=/usr/local/opt/fzf
ca tn tabnew
autocmd FileType elixir setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType go setlocal shiftwidth=4 tabstop=4

set clipboard=unnamed
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " bind \ (backward slash) to grep shortcut
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \] :Ag -U<SPACE>
endif

augroup gzip
  autocmd!
  autocmd BufReadPre,FileReadPre	*.gz set bin
  autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
  autocmd BufReadPost,FileReadPost	*.gz set nobin
  autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")
  autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
  autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r

  autocmd FileAppendPre		*.gz !gunzip <afile>
  autocmd FileAppendPre		*.gz !mv <afile>:r <afile>
  autocmd FileAppendPost		*.gz !mv <afile> <afile>:r
  autocmd FileAppendPost		*.gz !gzip <afile>:r
augroup END

let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

set infercase
set completeopt=longest,menuone

autocmd FileType go set omnifunc=go#complete#Complete 
autocmd FileType py set omnifunc=python3complete#Complete

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_null_module_warning = 0
