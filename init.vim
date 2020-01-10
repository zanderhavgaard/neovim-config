"  _  _       __   ___        
" | \| |___ __\ \ / (_)_ __   
" | .` / -_) _ \ V /| | '  \  
" |_|\_\___\___/\_/ |_|_|_|_| 
"   ___           __ _        
"  / __|___ _ _  / _(_)__ _   
" | (__/ _ \ ' \|  _| / _` |  
"  \___\___/_||_|_| |_\__, |  
"                     |___/   

" for neovim v0.3.6 or higher
" requires the Vundle package manager, install:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ===== plugins =====

" trying out defx
" Plugin 'Shougo/defx.nvim'

" VimFiler file explorer and unite dependency
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'

" nerdtree file explorer
" Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'

" fzf for vim
set rtp+=/usr/bin/fzf
Plugin 'junegunn/fzf.vim'

" add icons to stuff
Plugin 'ryanoasis/vim-devicons'

" starting splash screen with sessions
Plugin 'mhinz/vim-startify'

" autocloses brackets and parentheses in insert mode
Plugin 'Raimondi/delimitMate'

" support for many languages
Plugin 'sheerun/vim-polyglot'

" sensible defaults for many vim settings
Plugin 'tpope/vim-sensible'

" do not change layout when closing buffers
Plugin 'moll/vim-bbye'

" syntax checking / linting, requires external tools for specific languages,
" see :help syntactic-checkers
" Plugin 'vim-syntastic/syntastic'

" Asynchronous linting
Plugin 'dense-analysis/ale'

" git gutter
Plugin 'airblade/vim-gitgutter'
" for other VCS than git:
" Plugin 'mhinz/vim-signify'

" draws indent guides based on spaces
Plugin 'Yggdroot/indentLine'

" automatically set indent width
Plugin 'tpope/vim-sleuth'

" multiple cursor support
Plugin 'terryma/vim-multiple-cursors'

" provides autocompletion
" needs python3 integration, :echo has("python3") should return 1
" otherwise install 'pip3 install --user pynvim' (make sure you use system python3)
" after installing the plugin run :UpdateRemotePlugins to allow completion
" more autocomple sources are available here:
" https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
Plugin 'Shougo/deoplete.nvim'

" adds file handling to vim command mode
Plugin 'tpope/vim-eunuch'

" toggle lines as comment
Plugin 'scrooloose/nerdcommenter'

" git controls
Plugin 'tpope/vim-fugitive'

" sensibly toggle between absolute and relative line numbers
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" nicer bottom line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" show colorcodes as background
Plugin 'chrisbra/Colorizer'

" color math parentheses in scope
Plugin 'luochen1990/rainbow'

" better python syntax highlighting
Plugin 'kh3phr3n/python-syntax'

" docker files syntax
Plugin 'ekalinin/Dockerfile.vim'

" cycle colorschems
Plugin 'vim-scripts/CycleColor'

" ===== colorschemes =====
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mr-ubik/vim-hackerman-syntax'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'srcery-colors/srcery-vim'
Plugin 'dracula/vim'
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===== Colorscheme specific configs =====

" Italics for palenight
let g:palenight_terminal_italics=1

" choose ayu version
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

" base16 correct colors
let base16colorspace=256 

" ===== Colorscheme =====

" set colorscheme, only use one (duh)
" colorscheme gruvbox
colorscheme onedark
" colorscheme solarized
" colorscheme hackerman
" colorscheme palenight
" colorscheme ayu
" colorscheme OceanicNext
" colorscheme srcery
" colorscheme dracula
" colorscheme base16-default-dark

" choose an airline theme, or comment all out to use one 
" from colorscheme if available
" let g:airline_theme='deus'
" et g:airline_theme='base16'


" transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none

" use dark background
set background=dark

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" enable syntax highlightinh
syntax on

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
" set wrapmargin=8

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

" airline configuartion
let g:airline_left_sep=''
let g:airline_right_sep=''
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline_left_sep=' '
" let g:airline_right_sep=' '
" let g:airline_left_sep=' '
" let g:airline_right_sep=' '
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
  \ 'python': ['flake8'],
  \ 'java': ['javac'],
  \ 'scala': ['scalac', 'sbtserver'],
  \ 'cpp': ['gcc']}

" syntastic settings
" allow more than one linter at the same time
" let g:syntastic_aggregate_errors = 1
" for more settings :help syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" syntastic flake8 for python configuartion:
" ignore these error codes:
" let g:syntastic_python_flake8_post_args='--ignore=E501,E402,E303,E302,E301,E231,E225,E123,F401,W391'

" draw indent guides for tab-indented code
set listchars=tab:\|\ 
set list

" Use deoplete.
" more options :help deoplete-options
let g:deoplete#enable_at_startup = 1

" more natural split opening
set splitbelow
set splitright

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
let g:vimfiler_as_default_explorer = 1

" set some icons
let g:vimfiler_tree_leaf_icon = '|'
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_marked_file_icon = '✓'

" show hidden files
let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'

" ===== NerdTree Settings =====

" start automatically
"autocmd vimenter * NERDTree

" start automatically when no file is given as argument
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" if nerdtree is the only buffer, close the vim window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" style arrows
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

" make ui nicer
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

" ===== try to improve java syntax highlighting =====
let java_highlight_functions = 1
let java_highlight_all = 1
" If you are trying this at runtime, you need to reload the syntax file
set filetype=java

" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" ===== Custom Keybindings =====

" set the <Leader> var
let mapleader = " "

" Toggle nerdtree
" map <Leader>f :NERDTreeToggle<CR>

" Toggle VimFilerExplorer
map <Leader>m :VimFilerExplorer<CR>

" Open new file in current buffer
map <Leader>n :VimFiler<CR>

" open new file in current buffer with fzf
map <Leader>n :Files<CR>

" switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize buffers - dont work...
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
