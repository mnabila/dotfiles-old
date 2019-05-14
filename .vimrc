" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Plug
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" UI plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'severin-lemaignan/vim-minimap'
Plug 'majutsushi/tagbar'

" Utility
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'

" Programgin support
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
" Git Support
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" Theme & Icons
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'ajh17/spacegray.vim'
" Initialize plugin system
call plug#end()
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " required
filetype off                  " required

" UTF-8 Support
set encoding=utf-8

" Mouse support
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" System Clipboard
set clipboard=unnamed

" vim theming
syntax on
colorscheme spacegray 
set background=dark

set backspace=indent,eol,start " make backspace a more flexible
set backup " make backup files
set backupdir=~/.vim/tmp/backup " where to put backup files
set directory=~/.vim/tmp/swap " directory to place swap files in
set undodir=~/.vim/tmp/undo " directory to place undo files in
set undofile " make undo possible after the file is closed and reopened
set clipboard=unnamedplus " share clipboard
set hidden " you can change buffers without saving
set noerrorbells " don't make noise
set wildmenu " turn on command line completion wild style
set wildmode=full
set ttyfast " i have a fast terminal
set gdefault " global substitutions are default s/a/b/g
set ttimeoutlen=50  " make Esc work faster
set autoread " make vim monitor realtime changes to a file
au CursorHold,CursorHoldI * checktime " auto update trigger when cursor stops moving
au FocusGained,BufEnter * :checktime " auto update trigger on buffer change or terminal focus
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM User Interface 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editor configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" Split Layouts
set splitbelow
set splitright

set t_Co=256 " set terminal 256 color
set incsearch " incremental search aka search as you type
set hlsearch " highlight search matches
set ignorecase " ignore case
set smartcase " but when the query starts with upper character be case sensitive
set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines between rows
set list " show traling listchars
set listchars=space:·
"set listchars=tab:▸\ ,eol:$,trail:¬,extends:❯,precedes:❮,nbsp:~
set nostartofline " don't move the cursor to first non-blank character after some command    s (:25 e.g.)
set novisualbell " don't blink
set relativenumber " turn on line numbers
set nu " turn on line number on selected line
set report=0 " tell us when anything is changed
set ruler " always show current positions along the bottom
set foldmethod=syntax
set foldlevel=0 " default unfold when open a file
set shortmess=atToO " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmode " show current mode
set showmatch " show matching brackets
"set scrolloff=5 " keep 10 lines (top/bottom) for scope
"set sidescrolloff=10 " keep 5 lines at the size
set cursorline " visually mark current line
"set showbreak=↪ " indicate wrapped line
hi  clear ModeMsg " disable Color StatusLine on Insert Mode and Visual Mode
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Keybindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" leader
" split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
" YouCompleteMe
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" NERDTree
map <F2> :NERDTreeToggle<CR>
map <C-\> :NERDTreeToggle<CR>
" move among buffers with CTRL
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
" moving 
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
no <down> <Nop>
no <C-left> <Nop>
no <C-right> <Nop>
no <C-up> <Nop>
no <C-down> <Nop>
" copy and paste in vim 
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
" Tagbar
nmap <F8> :TagbarToggle<CR>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline symbol
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = ''
let g:airline_symbols.spell = '暈'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'bubblegum'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_completion_enabled = 1
let g:ale_linters = {
    \   'css': ['prettier'],
    \   'html': ['htmlhint'],
    \   'javascript': ['eslint'],
    \   'json': ['jsonlint'],
    \   'lua': ['luac'],
    \   'markdown': ['prettier'],
    \   'php': ['langserver'],
    \   'python': ['autopep8'],
    \   'sass': ['stylelint'],
    \   'scss': ['prettier'],
    \   'xml': ['xmllint'],
    \   'yaml': ['prettier'],
    \}

" linter symbols
let g:ale_sign_error = ''
let g:ale_sign_warning = '▲'

"let g:ale_change_sign_column_color = 1

" highlight
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = {
    \   'python': ['autopep8']
    \}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ycm configuration for python
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_semantic_triggers = {
    \   'python': [ 're!\w{2}' ]
    \ }
let g:ycm_python_interpreter_path = '/usr/bin/python3'
let g:ycm_python_sys_path = [
    \   '/usr/lib/python3.7.zip',
    \   '/usr/lib/python3.7',
    \   '/usr/lib/python3.7/lib-dynload',
    \   '/usr/lib/python3.7/site-packages',
    \   '/home/dani/.local/lib/python3.7/site-packages'
    \]
let g:ycm_extra_conf_vim_data = [
    \  'g:ycm_python_interpreter_path',
    \  'g:ycm_python_sys_path'
    \]
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/global_extra_conf.py'
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeIgnore=['__pycache__']

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim javascript configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup javascript_folding
        au!
        au FileType javascript setlocal foldmethod=syntax
augroup END
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim css configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
augroup END
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim html5 and emmet configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType htmlo set omnifunc=htmlcomplete#CompleteTags
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:html5_event_handler_attributes_complete = 1
let g:html5_rdfa_attributes_complete = 1
let g:html5_microdata_attributes_complete = 1
let g:html5_aria_attributes_complete = 1
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree github configuration
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "",
    \ "Untracked" : "*",
    \ "Renamed"   : "",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "",
    \ 'Ignored'   : '',
    \ "Unknown"   : "?"
    \ 
    \}
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
