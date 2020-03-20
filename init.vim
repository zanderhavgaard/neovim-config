"    _       __   ___
" | \| |___ __\ \ / (_)_ __
" | .` / -_) _ \ V /| | '  \
" |_|\_\___\___/\_/ |_|_|_|_|
"   ___           __ _
"  / __|___ _ _  / _(_)__ _
" | (__/ _ \ ' \|  _| / _` |
"  \___\___/_||_|_| |_\__, |
"                     |___/

" ===== Providers ======

" first we disable some integrations we do not need
" to speed up start time
" disable ruby integration
let g:loaded_ruby_provider = 0
" disable node.js integration
let g:loaded_node_provider = 0
" disable python2 integration
let g:loaded_python_provider = 0

" setup to use system python3
let g:python3_host_prog = '/usr/bin/python'

" ===== Vim Plug =====

" install plugins
call plug#begin('~/.vim/plugged')

" ===== plugins =====

" register vim-plug to get help files
Plug 'junegunn/vim-plug'

" sensible defaults for many vim settings
Plug 'tpope/vim-sensible'

" visual file browser
Plug 'preservim/nerdtree'
" git integration for nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'
" more colors in nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" add icons to stuff
Plug 'ryanoasis/vim-devicons'

" starting splash screen with sessions
Plug 'mhinz/vim-startify'

" autocloses brackets and parentheses in insert mode
Plug 'Raimondi/delimitMate'

" support for many languages
Plug 'sheerun/vim-polyglot'

" clpse all buffers not open in a window
Plug 'artnez/vim-wipeout'

" Asynchronous linting
Plug 'dense-analysis/ale'

" git gutter
Plug 'airblade/vim-gitgutter'

" git controls
Plug 'tpope/vim-fugitive'

" inline git blame
Plug 'APZelos/blamer.nvim'

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
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'liuchengxu/vim-which-key'

" better python syntax highlighting
" Plug 'kh3phr3n/python-syntax'
Plug 'numirias/semshi'

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

" use fzf in vim
set rtp+=/usr/bin/fzf
Plug 'junegunn/fzf.vim'
" nice floating window fzf implementation
Plug 'yuki-ycino/fzf-preview.vim'

" floating terminal window
Plug 'voldikss/vim-floaterm'

" dim inactive windows
Plug 'blueyed/vim-diminactive'

" jump to definition
Plug 'pechorin/any-jump.nvim'

" view ctags in sidebar
Plug 'liuchengxu/vista.vim'

" animate and dynamically resize windows
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'

" ===== colorschemes =====
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'owickstrom/vim-colors-paramount'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'mhartington/oceanic-next'
Plug 'liuchengxu/space-vim-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'cocopon/iceberg.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'srcery-colors/srcery-vim'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'desmap/slick'
Plug 'flrnd/plastic.vim'
Plug 'junegunn/seoul256.vim'

" base16 themes - contains many themes..
Plug 'chriskempson/base16-vim'
" Access colors present in 256 colorspace
let base16colorspace=256

" done installing plugins
call plug#end()

" ===== Colorscheme // UI =====

" enable syntax highlightinh
syntax on

" use dark background
set background=dark

" use 24bit color if available
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" the configuration options should be placed before `colorscheme sonokai`
let g:sonokai_style = 'andromeda'
" let g:sonokai_style = 'shusia'
" let g:sonokai_style = 'atlantis'
" let g:sonokai_style = 'maia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

" gruvbox-material style
" let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_background = 'hard'

" oceanic next settings
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" ayu variants
" let ayucolor="light"
let ayucolor="mirage"
" let ayucolor="dark"

" set colorscheme, only use one (duh)
colorscheme one
" colorscheme onedark
" colorscheme gruvbox
" colorscheme dracula
" colorscheme sonokai
" colorscheme gruvbox-material
" colorscheme paramount
" colorscheme challenger_deep
" colorscheme OceanicNext
" colorscheme space-vim-dark
" colorscheme ayu
" colorscheme deep-space
" colorscheme base16-tomorrow-night
" colorscheme iceberg
" colorscheme palenight
" colorscheme nord
" colorscheme purify
" colorscheme srcery
" colorscheme happy_hacking
" colorscheme slick
" colorscheme plastic


" choose an airline theme, or comment all out to use one from colorscheme if available
" let g:airline_theme = 'deus'
" let g:airline_theme = 'material'

" transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" customize startify
" TODO cleanup
let g:startify_custom_header = [
      \ '         .            .      ',
      \ '       .,;.           :,.    ',
      \ '     .,;;;,,.         ccc;.  ',
      \ '   .;c::::,,,.        ccccc: ',
      \ '   .::cc::,,,,,.      cccccc.',
      \ '   .cccccc;;;;;;.     llllll.   _   _        __      ___',
      \ '   .cccccc.,;;;;;;.   llllll.  | \ | |       \ \    / (_)',
      \ '   .cccccc  .;;;;;;.  oooooo.  |  \| | ___  __\ \  / / _ _ __ ___',
      \ '   .lllllc   .;;;;;;;.oooooo.  | . ` |/ _ \/ _ \ \/ / | | |_ ` _ \',
      \ '   .lllllc     ,::::::looooo.  | |\  |  __/ (_) \  /  | | | | | | |',
      \ '   .llllll      .:::::lloddd.  |_| \_|\___|\___/ \/   |_|_| |_| |_|',
      \ '   .looool       .;::coooodo.',
      \ '     .cool         .ccoooc.  ',
      \ '       .co          .:o:.    ',
      \ '         .           ..      ',
      \ ] +
      \ ['','','   QOTD:', ''] +
      \ map(split(system('fortune computers definitions disclaimer linux science wisdom'), '\n'), '"   ". v:val') +
      \ ['',
      \  '   ------------------------------------------------------------------',
      \  '   Zanders customized NeoVim ~ gihub.com/zanderhavgaard/neovim-config','','   Happy Hacking!','','']
" no indenline guides for startify
autocmd User Startified IndentLinesToggle

" make vertical splits look nicer
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
hi VertSplit guifg=#2C323C

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

" no linenumbers in terminal buffers
au TermOpen * setlocal nonumber norelativenumber scrolloff=0
au TermOpen * IndentLinesToggle

" always center the currnet line in the buffer
set scrolloff=999

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
" let g:airline_left_sep=' '
" let g:airline_left_alt_sep=' '

" let g:airline_right_sep=''
" let g:airline_right_sep=' '
" let g:airline_right_alt_sep=' '

" enable tabline extension
let g:airline#extensions#tabline#enabled = 1
" enale powerline fonts
let g:airline_powerline_fonts = 1

" use utf-8
set encoding=utf-8

" set default floaterm position
let g:floaterm_position = "center"
" set size of the floaterm
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" do not start indenLine for .md files, since it hides some text, by setting
set conceallevel=0
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
  \ 'python':['pylint', 'flake8'],
  \ 'python3':['pylint', 'flake8'],
  \ 'java':['javac'],
  \ 'scala':['scalac', 'sbtserver'],
  \ 'yaml':['yamllint'],
  \ 'sh':['shellcheck'],
  \ 'cpp':['gcc']}

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

" remove one tab character back in insert mode
inoremap <silent> <S-Tab> <C-d>

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
nnoremap <A-h> gT
nnoremap <A-l> gt
nnoremap <silent> <C-A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
" nnoremap <silent> <C-A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
" nnoremap <silent> <C-A-l> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" cycle tabs
nmap <silent> <Tab> :tabnext<CR>
nmap <silent> <S-Tab> :tabprevious<CR>

" set the <Leader> var
let mapleader = "\<Space>"
let maplocalleader = ","

" create dictionary for which key entries
let g:which_key_map = {}

" load the dictionary
" autocmd! User vim-which-key call which_key#register(<Space>,', 'g:which_key_map')
call which_key#register('<Space>', 'g:which_key_map')

" start whichkey
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" open a new tab
nnoremap <silent> <Leader>tt :tabnew<CR>
" open current buffer in new tab
nnoremap <silent> <Leader>tc <C-w>T
let g:which_key_map['t'] = {
      \ 'name':'+tabs',
      \ 't':'open new tab',
      \ 'c':'open current buffer in new tab',
      \}

" focus current buffer
nnoremap <silent> <Leader>ff <C-W>\|<C-W>_
" enter goyo
nnoremap <silent> <Leader>fg :Goyo<CR>
" equal size all bufffers
nmap <silent> <Leader>fe <C-w>=
let g:which_key_map['f'] = {
      \ 'name':'+focus_buffers',
      \ 'f':'focus current buffer',
      \ 'g':'focus current buffer with goyo',
      \ 'e':'equal size for all buffers',
      \}

" search and replace
nnoremap <Leader>rs :%s//gc<left><left><left>
" search and replace, but search word at caret
nnoremap <leader>rr :%s/<C-r><C-w>//gc<Left><Left><Left>
let g:which_key_map['r'] = {
      \ 'name':'+replace',
      \ 's':'search and replace',
      \ 'r':'replace word at cursor',
      \}

" remove highlighting
nnoremap <Leader><space> :let @/=""<CR>
let g:which_key_map[' '] = {'name':'Clear search highlight'}

" Colorize
nnoremap <Leader>hh :ColorHighlight<CR>
" Clear colorize
nnoremap <Leader>hc :ColorClear<CR>
let g:which_key_map['h'] = {
      \ 'name':'+Color Righlight',
      \ 'h':'highlight colors',
      \ 'c':'clear color highlight'}

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
let g:which_key_map['m'] = {'name':'NERDTree'}

" open new split
nnoremap <silent> <Leader>v :vsp <CR>
let g:which_key_map['v'] = {'name':'Vertical split'}
nnoremap <silent> <Leader>b :sp <CR>
let g:which_key_map['b'] = {'name':'Horizontal split'}


" open a new spilt and select file using fzf
" nnoremap <silent> <Leader>vn :vsp <bar> :Files <CR>
" nnoremap <silent> <Leader>bn :sp  <bar> :Files <CR>

" change fzf :Files to use preview
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" fzf on current dir and all subdirs
nnoremap <Leader>nn :Files <CR>
" fzf project files --> not sure how this is different than FzfPerviewGitFiles
nnoremap <Leader>np :FzfPreviewProjectFiles <CR>
" fzf grep line in files
nnoremap <Leader>nw :FzfPreviewProjectGrep <CR>
" fzf open buffers
nnoremap <Leader>nb :FzfPreviewBuffers <CR>
" open floating fzf with preview for files in git repo
nnoremap <Leader>ng :FzfPreviewGitFiles <CR>
" fzf git staus
nnoremap <Leader>ns :FzfPreviewGitStatus <CR>
let g:which_key_map['n'] = {
      \ 'name':'+Fzf',
      \ 'n':'Fzf all child files',
      \ 'p':'Fzf Project files',
      \ 'w':'Fzf Project grep word',
      \ 'b':'Fzf buffers',
      \ 'g':'Fzf git prjoct files',
      \ 's':'Fzf git project status',
      \}

" close all buffers not open in a window
nnoremap <Leader>w :Wipeout<CR>
let g:which_key_map['w'] = {'name':'Delete hidden buffers'}

" close buffer but keep window
nnoremap <Leader>q :Bdelete<CR>
let g:which_key_map['q'] = {'name':'Delete buffer'}

" activate ineline git blame
nnoremap <Leader>gb :BlamerToggle<CR>
let g:which_key_map['g'] = {
      \ 'name':'+git',
      \ 'b':'toggle blame in visual mode',
      \}

" floating terminal window
nnoremap <Leader>, :FloatermToggle<CR>
let g:which_key_map[','] = {'name':'Floaterm toggle'}
nnoremap <Leader>.. :FloatermNew<CR>
nnoremap <Leader>.n :FloatermNext<CR>
nnoremap <Leader>.p :FloatermPrev<CR>
nnoremap <Leader>.s :FloatermSend<CR>
let g:which_key_map['.'] = {
      \ 'name':'+Floaterm',
      \ '.':'Floaterm new',
      \ 'n':'Floaterm next',
      \ 'p':'Floaterm previous',
      \ 's':'Floaterm send to term',
      \}

" dynamic resize windows with animations
nnoremap <Leader>ae :let g:lens#disabled = 0<CR>
nnoremap <Leader>ad :let g:lens#disabled = 1<CR>
let g:which_key_map['a'] = {
      \ 'name':'+Lens/Animate',
      \ 'e':'Enable lens resize',
      \ 'd':'Disable lens resize',
      \}

" Jump to definition under cursore
nnoremap <leader>jj :AnyJump<CR>
" open previous opened file (after jump)
nnoremap <leader>jb :AnyJumpBack<CR>
" open last closed search window again
nnoremap <leader>jl :AnyJumpLastResults<CR>
let g:which_key_map['j'] = {
      \ 'name':'+Any Jump',
      \ 'j':'Jump to def at cursor',
      \ 'b':'Jump back to original file',
      \ 'l':'Open last closed search window'}

" show ctags in sidebar
nnoremap <Leader>x :Vista!!<CR>
let g:which_key_map['x'] = {'name':'Vista'}
