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

" visual file browser
Plug 'preservim/nerdtree'
" git integration for nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'
" vimfiler like navigation
Plug 'flw-cn/vim-nerdtree-l-open-h-close'

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

" clpse all buffers not open in a window
Plug 'artnez/vim-wipeout'

" Asynchronous linting
Plug 'dense-analysis/ale'

" git gutter
Plug 'airblade/vim-gitgutter'

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

" inline git blame
Plug 'APZelos/blamer.nvim'

" sensibly toggle between absolute and relative line numbers
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" nicer status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" show colorcodes as background
Plug 'chrisbra/Colorizer'

" color matching parentheses in scope
Plug 'luochen1990/rainbow'

" help finding Keybindings
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" better python syntax highlighting
Plug 'kh3phr3n/python-syntax'

" docker files syntax
Plug 'ekalinin/Dockerfile.vim'

" add org-mode functionality
Plug 'jceb/vim-orgmode'

" smooth scrolling
Plug 'psliwka/vim-smoothie'

" distraction free mode
Plug 'junegunn/goyo.vim'
" highlight current paragraph and dim rest of file
Plug 'junegunn/limelight.vim'

" open file at specific line
Plug 'bogado/file-line'

" nice floating window fzf implementation
set rtp+=/usr/bin/fzf
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim'

" ===== colorschemes =====
" Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'arcticicestudio/nord-vim'
Plug 'hzchirs/vim-material'

" done installing plugins
call plug#end()

" ===== Colorscheme // UI =====

" let g:material_style='palenight'
let g:material_style='oceanic'

" use 24bit color if available
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" set colorscheme, only use one (duh)
" colorscheme gruvbox
" colorscheme one
" colorscheme dracula
" colorscheme molokai
" colorscheme nord
colorscheme vim-material

" choose an airline theme, or comment all out to use one from colorscheme if available
" let g:airline_theme = 'deus'
let g:airline_theme = 'material'

" transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none

" use dark background
set background=dark

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" enable syntax highlightinh
syntax on

" make vertical splits look nicer
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
hi VertSplit guifg=#2C323C

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

" wrap line at number of columns from right
" set wrapmargin=8

" set width of tabs in spaces
set tabstop=4
set shiftwidth=4
" turn off softtab / space mixing
set softtabstop=0
" expand tabs to spaces
set expandtab

" automatically use same indentation on new line
set autoindent

" enable bold fonts:
let g:enable_bold_font = 1

" enable italics
let g:enable_italic_font = 1

" ignore case when searching
set ignorecase

" move cursor to nearest match while typing
set incsearch

" automactically reload file if changed
" outside vim and there are no unsaved edits
set autoread

" trigger check if file was changed outside vim
" when then cursor stops moving
au CursorHold,CursorHoldI * :checktime
au FocusGained,BufEnter * :checktime

" auto save files on window focus loss
:au FocusLost * :wa
:au BufLeave * :wa

" auto save when switching buffers
:set autowrite

" decrease timeout so that whichkey shows faster
set timeoutlen=500

" hide statusbar when whichkey is showed
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" decrease update time such git gutter works faster
set updatetime=100

" activate limelight when entering goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" airline configuartion
" let g:airline_left_sep=''
let g:airline_left_sep=' '
let g:airline_left_alt_sep=' '

" let g:airline_right_sep=''
let g:airline_right_sep=' '
let g:airline_right_alt_sep=' '

" enable tabline extension
let g:airline#extensions#tabline#enabled = 1
" enale powerline fonts
let g:airline_powerline_fonts = 1

" use utf-8
set encoding=utf-8

" do not start indenLine for .md files, since it hides some text, by setting
" :set conceallevel=2
autocmd FileType markdown let g:indentLine_enabled=0

" configure indentline
let g:indentLine_char = '▏'
let g:indentLine_first_char = '▏'
let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊','▏']

" enable rainbow parentheses
let g:rainbow_active = 1

" ALE settings
let g:ale_linters = {
  \ 'python':['flake8', 'black'],
  \ 'python3':['flake8', 'black'],
  \ 'java'  :['javac'],
  \ 'scala' :['scalac', 'sbtserver'],
  \ 'yaml'  :['yamllint'],
  \ 'sh'    :['shellcheck'],
  \ 'cpp'   :['gcc']}

let g:ale_fixers = {
  \ '*':['remove_trailing_lines', 'trim_whitespace'],
  \ 'python':['black', 'autopep8'],
  \ 'python3':['black', 'autopep8'],
  \}

let g:ale_fix_on_save = 1

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

" nerdcommenter config
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" better python highlighting, enable all features
let python_highlight_all = 1

" ===== NerdTree Settings =====

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

" ===== try to improve java syntax highlighting =====
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" ===== Custom Keybindings =====

" set the <Leader> var
let mapleader = "\<Space>"
let maplocalleader = ","

" switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize buffers
nnoremap <C-A-h> :vertical resize -5<cr>
nnoremap <C-A-j> :resize +5<cr>
nnoremap <C-A-k> :resize -5<cr>
nnoremap <C-A-l> :vertical resize +5<cr>

" tab switching use alt+left/right
" map <A-Right> gt
" map <A-Left> gT
nnoremap <A-h> gT
nnoremap <A-l> gt
nnoremap <silent> <C-A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
" nnoremap <silent> <C-A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
" nnoremap <silent> <C-A-l> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" cycle tabs
nmap <silent> <Tab> :tabnext<CR>
nmap <silent> <S-Tab> :tabprevious<CR>

" open a new tab
nmap <silent> <Leader>t :tabnew<CR>
" open current buffer in new tab
nmap <silent> <Leader>tt <C-w>T

" move one tab back in insert mode
inoremap <silent> <S-Tab> <C-d>

" focus current buffer
nnoremap <silent> <Leader>ff <C-W>\|<C-W>_

" enter goyo
nnoremap <silent> <Leader>fg :Goyo<CR>

" equal size all bufffers
nmap <silent> <Leader>fe <C-w>=

" search and replace
nnoremap <Leader>sr :%s//gc<left><left><left>
" search and replace, but search word at caret
nnoremap <leader>r :%s/<C-r><C-w>//gc<Left><Left><Left>
" remove highlighting
nnoremap <Leader><space> :let @/=""<CR>

" Colorize
nnoremap <Leader>h :ColorHighlight<CR>
" Clear colorize
nnoremap <Leader>hh :ColorClear<CR>
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

" start whichkey
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

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

" Toggle nerdtree
nnoremap <Leader>m :NERDTreeToggle<CR>

" open new split
nnoremap <silent> <Leader>v :vsp <CR>
nnoremap <silent> <Leader>b :sp <CR>

" open a new spilt and select file using fzf
nnoremap <silent> <Leader>vn :vsp <bar> :Files <CR>
nnoremap <silent> <Leader>bn :sp  <bar> :Files <CR>

" change fzf :Files to use preview
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" fzf on current dir and all subdirs
nnoremap <Leader>n :Files <CR>
" fzf project files --> not sure how this is different than FzfPerviewGitFiles
nnoremap <Leader>np :FzfPreviewProjectFiles <CR>
" fzf grep line in files
nnoremap <Leader>ngr :FzfPreviewProjectGrep <CR>
" fzf open buffers
nnoremap <Leader>nb :FzfPreviewBuffers <CR>
" open floating fzf with preview for files in git repo
nnoremap <Leader>ng :FzfPreviewGitFiles <CR>
" fzf git staus
nnoremap <Leader>ngs :FzfPreviewGitStatus <CR>

" close all buffers not open in a window
nnoremap <Leader>w :Wipeout<CR>

" close buffer but keep window
nnoremap <Leader>q :Bdelete<CR>

" activate ineline git blame
nnoremap <Leader>gb :BlamerToggle<CR>
