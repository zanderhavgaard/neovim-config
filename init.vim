"  _  _       __   ___        
" | \| |___ __\ \ / (_)_ __   
" | .` / -_) _ \ V /| | '  \  
" |_|\_\___\___/\_/ |_|_|_|_| 
"   ___           __ _        
"  / __|___ _ _  / _(_)__ _   
" | (__/ _ \ ' \|  _| / _` |  
"  \___\___/_||_|_| |_\__, |  
"                     |___/   

" install plugins
call plug#begin('~/.vim/plugged')

" ===== plugins =====

" register vim-plug to get help files
Plug 'junegunn/vim-plug'

" VimFiler file explorer and unite dependency
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler'

" visual file browser
Plug 'preservim/nerdtree'
" git integration for nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'
" vimfiler like navigation
Plug 'flw-cn/vim-nerdtree-l-open-h-close'

" fzf for vim
set rtp+=/usr/bin/fzf
Plug 'junegunn/fzf.vim'

" add icons to stuff
Plug 'ryanoasis/vim-devicons'

" starting splash screen with sessions
Plug 'mhinz/vim-startify'

" autocloses brackets and parentheses in insert mode
Plug 'Raimondi/delimitMate'

" support for many languages
Plug 'sheerun/vim-polyglot'

" sensible defaults for many vim settings
Plug 'tpope/vim-sensible'

" do not change layout when closing buffers
Plug 'moll/vim-bbye'

" Asynchronous linting
Plug 'dense-analysis/ale'

" git gutter
Plug 'airblade/vim-gitgutter'
" for other VCS than git:
" Plug 'mhinz/vim-signify'

" draws indent guides based on spaces
Plug 'Yggdroot/indentLine'

" automatically set indent width
Plug 'tpope/vim-sleuth'

" multiple cursor support
Plug 'terryma/vim-multiple-cursors'

" provides autocompletion
" more autocomple sources are available here:
" https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
Plug 'Shougo/deoplete.nvim'
" jedi integration for deoplete
Plug 'deoplete-plugins/deoplete-jedi'

" adds file handling to vim command mode
Plug 'tpope/vim-eunuch'

" toggle lines as comment
Plug 'scrooloose/nerdcommenter'

" git controls
Plug 'tpope/vim-fugitive'

" sensibly toggle between absolute and relative line numbers
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" nicer bottom line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" show colorcodes as background
Plug 'chrisbra/Colorizer'

" color math parentheses in scope
Plug 'luochen1990/rainbow'

" better python syntax highlighting
Plug 'kh3phr3n/python-syntax'

" docker files syntax
Plug 'ekalinin/Dockerfile.vim'

" ===== colorschemes =====
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'kaicataldo/material.vim'

" done installing plugins
call plug#end()

" ===== Colorscheme specific configs =====

" configuer material theme
" let g:material_theme_style = 'default' 
let g:material_theme_style = 'palenight'
" let g:material_theme_style = 'dark'

" ===== Colorscheme =====

" set colorscheme, only use one (duh)
" colorscheme gruvbox
colorscheme one
" colorscheme dracula
" colorscheme material

" choose an airline theme, or comment all out to use one from colorscheme if available
" let g:airline_theme = 'deus'
" let g:airline_theme = 'one'

" transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none

" use dark background
set background=dark

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" enable syntax highlightinh
syntax on

" ===== Providers ======

" setup to use system python2
let g:python_host_prog = '/usr/bin/python2'

" setup to use system python2
let g:python3_host_prog = '/usr/bin/python'

" ===== Clipboard =====

" automatically use system clipboard for all yanking and pasting
set clipboard+=unnamedplus

" ===== Custom settings =====

" highlight current line
set cursorline

" enable line numbers 
set number

" enable relative line numbers
set relativenumber

" faster scrolling
set lazyredraw

" show current command
set showcmd

" show current mode
set showmode

" highlight matching braces
set showmatch

" not exactly sure what wrapmargin does
" TODO ?
set wrapmargin=8

" configure tab indents
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" enable bold fonts:
let g:enable_bold_font = 1

" enable italics
let g:enable_italic_font = 1

" ignore case when searching
set ignorecase

" move cursor to nearest match while typing
set incsearch

" use 24bit color if available
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" auto save files on window focus loss
:au FocusLost * :wa

" decrease update time such git gutter works faster
set updatetime=100

" airline configuartion
let g:airline_left_sep=''
let g:airline_right_sep=''
" enable tabline extension
let g:airline#extensions#tabline#enabled = 1
" enale powerline fonts
let g:airline_powerline_fonts = 1

" use utf-8
set encoding=utf-8

" do not start indenLine for .md files, since it hides some text, by setting
" :set conceallevel=2
autocmd FileType markdown let g:indentLine_enabled=0

" enable rainbow parentheses
let g:rainbow_active = 1

" ALE settings
let g:ale_linters = {
  \ 'python':['flake8', 'black'],
  \ 'java'  :['javac'],
  \ 'scala' :['scalac', 'sbtserver'],
  \ 'yaml'  :['yamllint'],
  \ 'sh'    :['shellcheck'],
  \ 'cpp'   :['gcc']}

" syntastic flake8 for python configuartion:
" ignore these error codes:
" let g:syntastic_python_flake8_post_args='--ignore=E501,E402,E303,E302,E301,E231,E225,E123,F401,W391'
" TODO adapt for ALE

" draw indent guides for tab-indented code
set listchars=tab:\|\ 
set list

" Use deoplete.
" more options :help deoplete-options
let g:deoplete#enable_at_startup = 1

" more natural split opening
set splitbelow
set splitright

" make vertical splits look nicer
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
hi VertSplit guifg=#1C1F2B

" nerdcommenter config
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" better python highlighting, enable all features
let python_highlight_all = 1

" ===== VimFiler Settings =====

" Set VimFiler as default file manager
" let g:vimfiler_as_default_explorer = 1

" set some icons
" let g:vimfiler_tree_leaf_icon = '|'
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" let g:vimfiler_marked_file_icon = '✓'

" ignore some files
" let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'

" ===== NerdTree Settings =====

" start automatically
" autocmd vimenter * NERDTree

" start automatically when no file is given as argument
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" show hidden files
let NERDTreeShowHidden = 1

" if nerdtree is the only buffer, close the vim window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" delete buffer if file is deleted
let NERDTreeAutoDeleteBuffer = 1

" style arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" make ui nicer
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" icons for git integration
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

" ===== try to improve java syntax highlighting =====
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" ===== Custom Keybindings =====

" set the <Leader> var
let mapleader = " "

" Toggle nerdtree
map <Leader>m :NERDTreeToggle<CR>

" Toggle VimFilerExplorer
" map <Leader>m :VimFilerExplorer<CR>

" Open new file in current buffer with vimfiler
" map <Leader>n :VimFiler<CR>

" open new file in current buffer with fzf
map <Leader>n :Files<CR>

" switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize buffers - dont work...
" TODO fix
"nnoremap <S-C-J> <C-W><+>
"nnoremap <S-C-K> <C-W><->

" tab switching use alt+left/right
map <A-Right> gt
map <A-Left> gT
map <A-h> gT
map <A-l> gt
nnoremap <silent> <C-A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
nnoremap <silent> <C-A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-l> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" remove highlighting
nnoremap <Leader><space> :let @/=""<CR>

" close syntastic
map <Leader>l :lclose<CR>

" Colorize
map <Leader>h :ColorHighlight<CR>
" Clear colorize
map <Leader>j :ColorClear<CR>

" neovim terminal
if has('nvim')
  " exit terminal insert mode
  tnoremap <Esc> <C-\><C-n>
  " move buffers
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
endif

" multiple cursors settings
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
