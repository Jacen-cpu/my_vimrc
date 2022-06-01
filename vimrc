" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"    _      ____  _                 _       __     _____ __  __ ____   ____
"   / \    / ___|(_)_ __ ___  _ __ | | ___  \ \   / /_ _|  \/  |  _ \ / ___|
"  / _ \   \___ \| | '_ ` _ \| '_ \| |/ _ \  \ \ / / | || |\/| | |_) | |
" / ___ \   ___) | | | | | | | |_) | |  __/   \ V /  | || |  | |  _ <| |___
"/_/   \_\ |____/|_|_| |_| |_| .__/|_|\___|    \_/  |___|_|  |_|_| \_\\____|
"                            |_|
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

" Created by G1g4lo
" simple and useful
                            
" highlight
syntax on
let &t_ut=''
filetype plugin indent on
" open the line number
set number
" show a line
set cursorline

set wrap

set showcmd

set wildmenu

" tabe
map tn :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

" key h j k l
noremap i k
noremap k j
noremap j h
noremap h i

noremap I 6k
noremap K 6j

noremap H I

" save and quit
map s <nop>
map S :w<CR>
map Q :q<CR>
map ! :q!<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noexpandtab
set scrolloff=5

" split the window
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

 map <up> :res +5<CR>
 map <down> :res -5<CR>
 map <left> :vertical resize-5<CR>
 map <right> :vertical resize+5<CR>


map <SPACE>i <C-w>k
map <SPACE>k <C-w>j
map <SPACE>j <C-w>h
map <SPACE>l <C-w>l

set backspace=indent,eol,start

" Spelling Check with <space>sc
map <LEADER>sc :set spell!<CR>

" reload the vimrc
map re :source $VIMRC<CR>
" the paste bug, the way to enter the paste mod
map pp :set paste<CR>
map pe :set nopaste<CR>
set clipboard=unnamedplus
"vim-airline-theme
let g:airline_theme="violet"
" Some Plugs
call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/space-vim-dark'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()

" ==
" == scheme
" ==
colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" ==
" == NERDtree
" ==
map tt :NERDTreeToggle<CR>
nnoremap ft :NERDTreeFind<CR>

" ==
" == Ycm
" ==
nnoremap gd: YcmCompleter GoToDefinitionElseDeclaration<CR>
set previewpopup=height:10,width:60,highlight:PMenuSbar
set completeopt+=popup
set completepopup=height:15,width:60,border:off,highlight:PMenuSbar
" ==
" == ale
" ==

" ==
" == Taglist
" ==

" ==
" == Tagbar
" ==
