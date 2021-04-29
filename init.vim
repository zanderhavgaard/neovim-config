"  __  __                 __  __
" /\ \/\ \               /\ \/\ \  __
" \ \ `\\ \     __    ___\ \ \ \ \/\_\    ___ ___
"  \ \ , ` \  /'__`\ / __`\ \ \ \ \/\ \ /' __` __`\
"   \ \ \`\ \/\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \
"    \ \_\ \_\ \____\ \____/\ `\___/\ \_\ \_\ \_\ \_\
"     \/_/\/_/\/____/\/___/  `\/__/  \/_/\/_/\/_/\/_/
"  ____                       ___
" /\  _`\                   /'___\ __
" \ \ \/\_\    ___     ___ /\ \__//\_\     __
"  \ \ \/_/_  / __`\ /' _ `\ \ ,__\/\ \  /'_ `\
"   \ \ \L\ \/\ \L\ \/\ \/\ \ \ \_/\ \ \/\ \L\ \
"    \ \____/\ \____/\ \_\ \_\ \_\  \ \_\ \____ \
"     \/___/  \/___/  \/_/\/_/\/_/   \/_/\/___L\ \
"                                          /\____/
"                                          \_/__/
"
" by @zanderhavgaard ~ github.com/zanderhavgaard/neovim-config

" ===== Providers ======

" first we disable some integrations we do not need
" to speed up start time
" disable ruby integration
let g:loaded_ruby_provider = 0
" disable node.js integration
let g:loaded_node_provider = 0
" disable python2 integration
let g:loaded_python_provider = 0
" disable perl provider
let g:loaded_perl_provider = 0

" setup to use system python3
let g:python3_host_prog = '/usr/bin/python'

" ===== Vim Plug =====

" install plugins
call plug#begin('~/.vim/plugged')

" ===== plugins =====

" register vim-plug to get help files
Plug 'junegunn/vim-plug'

" execute commands asyncronously
Plug 'skywind3000/asyncrun.vim'

" sensible defaults for many vim settings
Plug 'tpope/vim-sensible'

" visual file browser
Plug 'preservim/nerdtree'
" git integration for nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'

" add icons to stuff
Plug 'ryanoasis/vim-devicons'

" starting splash screen with sessions
Plug 'mhinz/vim-startify'

" autocloses brackets and parentheses in insert mode
Plug 'Raimondi/delimitMate'

" autoclose html/xml style tags
Plug 'alvan/vim-closetag'

" synyax support for many languages
" disable polyglot syntax highlighting for shell languages,
" must be set before loading the plugin
let g:polyglot_disabled = ['bash','sh','zsh']
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
Plug 'lukas-reineke/indent-blankline.nvim'

" automatically set indent width
Plug 'tpope/vim-sleuth'

" multiple cursor support
" Plug 'terryma/vim-multiple-cursors'

" search and repalce across multiple files
" Plug 'brooth/far.vim'

" snippets engine
" Plug 'SirVer/ultisnips'
" snippets
" Plug 'honza/vim-snippets'

" TODO fix/replace with some other plugin
" provides autocompletion
" more autocomple sources are available here:
" https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
Plug 'Shougo/deoplete.nvim'
" jedi integration for deoplete
Plug 'deoplete-plugins/deoplete-jedi'

" highlight unique characters in lines to allow quick horizontal movement
Plug 'unblevable/quick-scope'

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

" prebiew markdown files
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" add org-mode functionality
" Plug 'jceb/vim-orgmode'

" smooth scrolling
Plug 'psliwka/vim-smoothie'

" distraction free mode
Plug 'junegunn/goyo.vim'
" highlight current paragraph and dim rest of file
Plug 'junegunn/limelight.vim'

" open file at specific line
Plug 'bogado/file-line'

" fzf for vim
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" fzf like fuzzy searching
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" floating terminal window
" Plug 'voldikss/vim-floaterm'

" jump to definition
" Plug 'pechorin/any-jump.nvim'

" view ctags in sidebar
" Plug 'liuchengxu/vista.vim'

" golang integration
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" easily swap window positions
Plug 'wesQ3/vim-windowswap'

" for creating colorschmes
" Plug 'lifepillar/vim-colortemplate'

" cheatsheet for vim
Plug 'lifepillar/vim-cheat40'

" dim inactive windows
" Plug 'blueyed/vim-diminactive'

" animate and dynamically resize windows
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'

" ===== colorschemes =====
Plug 'rakr/vim-one'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'

" use colorscheme generated by pywal
" to use you must uncomment the 24bit color options below
" Plug 'dylanaraps/wal.vim'

" base16 themes - contains many themes..
" Plug 'chriskempson/base16-vim'
" Access colors present in 256 colorspace
" let base16colorspace=256

" done installing plugins
call plug#end()

" ===== Colorscheme // UI =====

" enable syntax highlightinh
syntax on

" use dark background
" set background=dark

" you can set dark/light theme using environment variables
if ($NVIM_BACKGROUND != "")
    silent let bg = $NVIM_BACKGROUND
    if (bg == "dark")
        set background=dark
    elseif (bg == "light")
        set background=light
    endif
else
    set background=dark
endif

" use 24bit color if available
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" italics for one dark
" let g:one_allow_italics = 1

" ayu variants
" let ayucolor="light"
let ayucolor="mirage"
" let ayucolor="dark"

" pywal generated colorscheme
" colorscheme wal

" set colorscheme, only use one (duh)
colorscheme one
" colorscheme gruvbox
" colorscheme dracula
" colorscheme challenger_deep
" colorscheme ayu
" colorscheme nord

" choose an airline theme, or comment all out to use one from colorscheme if available
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'deus'
" let g:airline_theme = 'material'

" transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none

" return to terminal's own cursor setting on exit, by not changing cursor settings at all..
" set guicursor=

" use unicode chars in the header
let g:startify_fortune_use_unicode = 1

let g:ascii_header = [
    \ '      .            .      ',
    \ '    .,;.           :,.    ',
    \ '  .,;;;,,.         ccc;.  ',
    \ '.;c::::,,,.        ccccc: ',
    \ '.::cc::,,,,,.      cccccc.     _   _        __      ___',
    \ '.cccccc;;;;;;.     llllll.    | \ | |       \ \    / (_)',
    \ '.cccccc.,;;;;;;.   llllll.    |  \| | ___  __\ \  / / _ _ __ ___',
    \ '.cccccc  .;;;;;;.  oooooo.    | . ` |/ _ \/ _ \ \/ / | | |_ ` _ \',
    \ '.lllllc   .;;;;;;;.oooooo.    | |\  |  __/ (_) \  /  | | | | | | |',
    \ '.lllllc     ,::::::looooo.    |_| \_|\___|\___/ \/   |_|_| |_| |_|',
    \ '.llllll      .:::::lloddd.',
    \ '.looool       .;::coooodo.',
    \ '  .cool         .ccoooc.  ',
    \ '    .co          .:o:.    ',
    \ '      .           ..      ',
    \ ]

let g:header_line = [
    \ '───────────────────────────────────────────────────────────────────',
    \ ]

let g:post_header = [
    \ 'Zanders customized NeoVim | github.com/zanderhavgaard/neovim-config',
    \ '',
    \ '~ Happy Hacking! ~',
    \ '',
    \ ]

let g:header_version = [
    \ 'Version: ' . system('nvim --version | head -n 1')
    \ ]

let g:startify_custom_header = startify#pad(startify#fortune#cowsay() + g:header_line + g:post_header + g:header_version)

" no indenline guides for startify
autocmd User Startified IndentLinesToggle

" make vertical splits look nicer
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
hi VertSplit guifg=#2C323C

" ===== GUI ======

" set font for gui
set guifont=Mononoki\ Nerd\ Font:h16

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

" draw indent guides for tab-indented code
set listchars=tab:\|\
set list

" more natural split opening
set splitbelow
set splitright

" enable spellchecking for .md and .tex files
autocmd FileType markdown,tex,latex,plaintex set spell

" activate limelight when entering goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" startify autoload sessions
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
" where to save vim sessions
let g:startify_session_dir = '/home/zander/.vim/session'

" enable quickscope when pressing one of the following keys
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

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
" let g:floaterm_position = "center"
" set size of the floaterm
" let g:floaterm_width = 0.8
" let g:floaterm_height = 0.8

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
" disable for html/xml files
autocmd FileType html,xml RainbowToggleOff
let g:rainbow_conf = {
\	'separately': {
\		'nerdtree': 0,
\	}
\}

" nerdcommenter config
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" better python highlighting, enable all features
let python_highlight_all = 1

" configure golang integration
" enable syntax highlighting features
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
" enable highlight same ids in code
let g:go_auto_sameids = 1
" auto import packages
" let g:go_fmt_command = "goimports"
" show types in statusbar when hovering over variables
let g:go_auto_type_info = 1
" use language server
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" ALE settings
let g:ale_use_global_executables = 1
" let g:ale_python_pylint_options = ""
let g:ale_python_flake8_options = "--ignore E501"
let g:ale_python_black_options = "--line-length 120"
let g:ale_python_autopep8_options = "--ignore E501"

let g:ale_linters = {
  \ 'python':['pylint', 'flake8'],
  \ 'python3':['pylint', 'flake8'],
  \ 'java':['javac'],
  \ 'scala':['scalac', 'sbtserver'],
  \ 'yaml':['yamllint'],
  \ 'sh':['shellcheck'],
  \ 'dockerfile':['hadolint'],
  \ 'terraform':['tflint'],
  \ 'cpp':['gcc'],
  \ }

let g:ale_fixers = {
  \ '*':['remove_trailing_lines', 'trim_whitespace'],
  \ 'python':['black', 'autopep8'],
  \ 'python3':['black', 'autopep8'],
  \ 'terraform':['terraform'],
  \}

let g:ale_fix_on_save = 1

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Use deoplete.
" more options :help deoplete-options
let g:deoplete#enable_at_startup = 1

" instant markdown plugin settings
" you might need to run 'sudo npm install -g instant-markdown-d' for the node
" version< which seems to work better
" let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "firefox --new-window"
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
let g:instant_markdown_allow_external_content = 1
" use python nodejs implementation?
let g:instant_markdown_python = 0

" ===== FZF Settings =====

" Always enable preview window on the right with 60% width
" let g:fzf_preview_window = 'right:80%'
" [Buffers] Jump to the existing window if possible
" let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
" let g:fzf_tags_command = 'ctags -R'

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

" ignore folders
let NERDTreeIgnore=['\.git$', '\.terraform$', '__pycache__$']

" ===== try to improve java syntax highlighting =====
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" ===== Custom commands =====

" generate recursive list of todo comments
command Todo noautocmd vimgrep /TODO\|FIXME\|HACK/j ** | cw

" ===== Custom Keybindings =====

" neovim terminal
" exit terminal insert mode
tnoremap <Esc> <C-\><C-n>
" move buffers
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l

" remove one tab character back in insert mode
" inoremap <silent> <S-Tab> <C-d>

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

" saner goto end start/end of line
nnoremap H ^
nnoremap L $

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

" conveniently execute macro saved to q register
nnoremap <Leader>q @q
let g:which_key_map['q'] = {'name':'execute macro in q register'}

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
nnoremap <silent> <Leader>fg :Goyo 50%x90%<CR>
nnoremap <silent> <Leader>fh :Goyo <CR>
" equal size all bufffers
nmap <silent> <Leader>fe <C-w>=
let g:which_key_map['f'] = {
      \ 'name':'+focus_buffers',
      \ 'f':'focus current buffer',
      \ 'g':'focus current buffer with goyo',
      \ 'h':'toggle goyo',
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
nnoremap <silent> <Leader>vn :vsp <bar> :Files <CR>
nnoremap <silent> <Leader>bn :sp  <bar> :Files <CR>

" telescope fuzzy searching
" recursively search files
nnoremap <leader>nn <cmd>Telescope find_files<cr>
" search files in git repo
nnoremap <leader>ng <cmd>Telescope git_files<cr>
" grep string under cursor
nnoremap <leader>nj <cmd>Telescope grep_string<cr>
" interactively grep
nnoremap <leader>nf <cmd>Telescope live_grep<cr>
" select buffer
nnoremap <leader>nb <cmd>Telescope buffers<cr>
" search help tags
nnoremap <leader>nh <cmd>Telescope help_tags<cr>
" search man pages
nnoremap <leader>nm <cmd>Telescope man_pages<cr>
" search registers
nnoremap <leader>nr <cmd>Telescope registers<cr>

" fzf on current dir and all subdirs
" nnoremap <Leader>nn :Files <CR>
" fzf grep line in files using keyword at karet
" nnoremap <Leader>nw :Rg <C-r><C-w><CR>
" fzf grep line in files using keyword
" nnoremap <Leader>nq :Rg <CR>
" fzf open buffers
" nnoremap <Leader>nb :Buffers <CR>
" open floating fzf with preview for files in git repo
" nnoremap <Leader>ng :GFiles <CR>
" fzf git staus
" nnoremap <Leader>ns :GFiles?<CR>
" let g:which_key_map['n'] = {
      " \ 'name':'+Fzf',
      " \ 'n':'Fzf all child files',
      " \ 'w':'Fzf Project grep current word',
      " \ 'q':'Fzf Project grep',
      " \ 'b':'Fzf buffers',
      " \ 'g':'Fzf git prjoct files',
      " \ 's':'Fzf git project status',
      " \}

" close all buffers not open in a window
nnoremap <Leader>w :Wipeout<CR>
let g:which_key_map['w'] = {
      \ 'name':'+window',
      \ 'i':'Delete hidden buffers',
      \ 'w':'Swap window'
      \}

" close buffer but keep window
" nnoremap <Leader>q :Bdelete<CR>
" let g:which_key_map['q'] = {'name':'Delete buffer'}

" activate ineline git blame
nnoremap <Leader>gb :BlamerToggle<CR>
let g:which_key_map['g'] = {
      \ 'name':'+git',
      \ 'b':'toggle blame in visual mode',
      \}

" floating terminal window
" nnoremap <Leader>, :FloatermToggle<CR>
" let g:which_key_map[','] = {'name':'Floaterm toggle'}
" nnoremap <Leader>.. :FloatermNew<CR>
" nnoremap <Leader>.n :FloatermNext<CR>
" nnoremap <Leader>.p :FloatermPrev<CR>
" nnoremap <Leader>.s :FloatermSend<CR>
" let g:which_key_map['.'] = {
      " \ 'name':'+Floaterm',
      " \ '.':'Floaterm new',
      " \ 'n':'Floaterm next',
      " \ 'p':'Floaterm previous',
      " \ 's':'Floaterm send to term',
      " \}

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

" errors/spellcheck
nnoremap <Leader>sn ]s
nnoremap <Leader>sp [s
nnoremap <Leader>sc z=
nnoremap <Leader>sa zg
nnoremap <Leader>si zw
let g:which_key_map['s'] = {
      \ 'name':'errors/spelling',
      \ 'n':'next error',
      \ 'p':'previous error',
      \ 'c':'correct error',
      \ 'a':'add to dictionary',
      \ 'm':'mark as error',
      \ }

" cheatsheet
nnoremap <Leader>? :Cheat40<CR>
" TODO fix name not displaying
let g:which_key_map['?'] = {'name':'cheat sheet'}
