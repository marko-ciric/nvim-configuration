let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'

set nocompatible
filetype off

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
Plug 'jrosiek/vim-mark'
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
" Plug 'mhartington/nvim-typescript'
Plug 'leafgarland/typescript-vim'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'

Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-clang'
Plug 'tweekmonster/deoplete-clang2'
"

Plug 'roxma/ncm-clang'
Plug 'roxma/nvim-completion-manager', {'for': ['python', 'go', 'typescript']}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-bufword'

Plug 'Valloric/YouCompleteMe', {'for': ['cpp', 'hpp', 'c', 'h', 'js', 'go']}
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

call plug#end()

let g:NERDTreeIndicatorMapCustom = {
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

let NERDTreeMinimalUI = 1

let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

set number
syntax enable
colorscheme sierra 
set background=dark
syntax on

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
map <C-k> :call fzf#vim#ag(expand('<cword>'))<CR>
map <C-g> :NERDTreeFind<CR>
map <leader><C-g> :NERDTreeToggle<CR>
map <leader><C-w> :NERDTreeCWD<CR>
map <leader><C-t> :terminal<CR>
map <leader><C-f> :ALEFix<CR>
map <leader><C-n> :tabnew<CR>
inoremap <CapsLock> <ESC>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='base16'

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
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
  nnoremap \ :Ag<SPACE>
endif

