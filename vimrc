syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu

noremap i k
noremap k j
noremap j h
noremap h i

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noexpandtab

map sa :set splitright<CR>:vsplit<CR>
map sd :set nosplitright<CR>:vsplit<CR>
map se :set nosplitbelow<CR>:split<CR>
map sf :set splitbelow<CR>:split<CR>

map <SPACE>i <C-w>k
map <SPACE>k <C-w>j
map <SPACE>j <C-w>h
map <SPACE>l <C-w>l

set backspace=indent,eol,start
