"   _  _       __   ___        
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

" VimFiler file explorer and unite dependency
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'

" nerdtree file explorer
" Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'

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
Plugin 'vim-syntastic/syntastic'

" git gutter
Plugin 'airblade/vim-gitgutter'
" for other VCS than git:
" Plugin 'mhinz/vim-signify'

" draws indent guides based on spaces
Plugin 'Yggdroot/indentLine'

" automatically set indent width
Plugin 'tpope/vim-sleuth'

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

" better python syntax highlighting
Plugin 'kh3phr3n/python-syntax'

" ===== colorschemes =====
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jacoborus/tender.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'mr-ubik/vim-hackerman-syntax'
Plugin 'drewtempelmeyer/palenight.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===== Colorscheme =====

" set colorscheme, only use one (duh)
" colorscheme gruvbox
" colorscheme onedark
" colorscheme solarized
" colorscheme tender
" colorscheme hybrid_material
" colorscheme hybrid_reverse
" colorscheme hackerman
colorscheme palenight

" choose an airline theme, or comment all out to use one 
" from colorscheme if available
let g:airline_theme='deus'
" let g:airline_theme='base16'


" transparent background
au ColorScheme * hi Normal ctermbg=none guibg=none

" use dark background
set background=dark

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" enable syntax highlightinh
syntax on

" ===== Colorscheme specific configs =====

" Italics for palenight
let g:palenight_terminal_italics=1

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

" enable bold fonts:
let g:enable_bold_font = 1

" enable italics
let g:enable_italic_font = 1

" use 24bit color if available
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" airline configuartion
let g:airline_left_sep=''
let g:airline_right_sep=''
" enable tabline extension
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
" enale powerline fonts
let g:airline_powerline_fonts = 1

" use utf-8
set encoding=utf-8

" syntastic settings
" for more settings :help syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic flake8 for python configuartion:
" ignore these error codes:
let g:syntastic_python_flake8_post_args='--ignore=E501,E402,E303,E302,E301,E231,E225,E123,F401,W391'

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

" nerdtree

" start automatically
"autocmd vimenter * NERDTree

" start automatically when no file is given as argument
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" if nerdtree is the only buffer, close the vim window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" style arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" make ui nicer
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" better python highlighting, enable all features
let python_highlight_all = 1

" ===== Custom Keybindings =====

" set the <Leader> var
let mapleader = " "

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
nnoremap <silent> <C-A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Toggle nerdtree
map <Leader>f :NERDTreeToggle<CR>

" remove highlighting
nnoremap <Leader><space> :let @/=""<CR>
