" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"    _      ____  _                 _       __     _____ __  __ ____   ____
"   / \    / ___|(_)_ __ ___  _ __ | | ___  \ \   / /_ _|  \/  |  _ \ / ___|
"  / _ \   \___ \| | '_ ` _ \| '_ \| |/ _ \  \ \ / / | || |\/| | |_) | |
" / ___ \   ___) | | | | | | | |_) | |  __/   \ V /  | || |  | |  _ <| |___
"/_/   \_\ |____/|_|_| |_| |_| .__/|_|\___|    \_/  |___|_|  |_|_| \_\\____|
"                            |_|
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

" >>>===Created by G1g4lo===<<<
" >>>===Simple and Useful===<<<
                            
" highlight

syntax on
let &t_ut=''

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

" Move

noremap i k
noremap k j
noremap j h
noremap h i
noremap I 6k
noremap K 6j
noremap H I

" File Action

map s <nop>
map S :w<CR>
map Q :q<CR>
map ! :q!<CR>
noremap U u
map u <nop>

" indentation

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noexpandtab
set scrolloff=5
set backspace=indent,eol,start

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


" Spelling Check with <space>sc
map <LEADER>sc :set spell!<CR>

" reload the vimrc
map re :source $VIMRC<CR>

" the paste bug, the way to enter the paste mod
map pp :set paste<CR>
map pe :set nopaste<CR>
set clipboard=unnamedplus


" >>> Amazing Plugs <<<
call plug#begin('~/.vim/plugged')

" scheme
Plug 'chriskempson/base16-vim'
Plug 'liuchengxu/space-vim-dark'
"Plug 'connorholyday/vim-snazzy'

" vim-airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" ycm
Plug 'ycm-core/YouCompleteMe'

call plug#end()


" >>> Scheme <<<
" vim color

colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" >>> NERDtree <<<

map tt :NERDTreeToggle<CR>
nnoremap ft :NERDTreeFind<CR>

" >>> Airline <<<

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" airline theme
let g:airline_theme="violet"

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_symbols.linenr                   = ''
let g:airline_symbols.maxlinenr                = ' '

" >>== YouCompleteMe ==<<

nnoremap gd: YcmCompleter GoToDefinitionElseDeclaration<CR>
set previewpopup=height:10,width:60,highlight:PMenuSbar
set completeopt+=popup
set completepopup=height:15,width:60,border:off,highlight:PMenuSbar
