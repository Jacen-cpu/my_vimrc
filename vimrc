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

" Control buffers

map X  :bd<CR>
map gj :bp<CR>
map gl :bn<Cr>

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
Plug 'ryanoasis/vim-devicons'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
 
" Bookmarks
Plug 'kshenoy/vim-signature'

" Error checking
Plug 'w0rp/ale'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()


" >>> Scheme <<<
" vim color

colorscheme space-vim-dark

hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" >>> NERDtree <<<

" Order map

"Use the natural Vim navigation keys hjkl to navigate the files.
"Press o to open the file in a new buffer or open/close directory.
"Press t to open the file in a new tab.
"Press i to open the file in a new horizontal split.
"Press s to open the file in a new vertical split.
"Press p to go to parent directory.
"Press r to refresh the current directory.
"Press m to launch NERDTree menu inside Vim.

map tt :NERDTreeToggle<CR>
nnoremap ft :NERDTreeFind<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = ""
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = ""
let NERDTreeMapOpenInTab = ""
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = ""
let NERDTreeMapChangeRoot = ""

set encoding=UTF-8
" >>> Coc <<<<

let g:coc_global_extensions = ['coc-json', 'coc-vimlsp']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Goto code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent>fd :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

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

" >>> ale <<<
let g:ale_linters = {'asm': ['i686-elf-gcc'], 'c': [], 'hs': ['glc'], 'h': []}

