


" allow backspacing over everything in insert mode

set autoread
set autowrite
set backspace   =indent,eol,start " allow backspacing over everything in insert mode
set laststatus  =2
set tabpagemax  =50
set wildmenu

set encoding=utf8           " UTF-8 by default
set expandtab               " No tabs

set nobackup                " No backups left after done editing
set visualbell t_vb=        " No flashing or beeping at all
set nowritebackup           " No backups made while editing

set history     =50         " keep 50 lines of command line history
set ruler                   " show the cursor position all the time
set showcmd                 " display incomplete commands
set incsearch               " do incremental searching
set hlsearch
"set clipboard   =unnamedplus " Use X clipboard 


" Identation
"

set shiftwidth  =4	        " spaces for ident
set tabstop     =4	        " spaces in Tab
set smarttab    	        " ident tabs
set expandtab	            " spaces instead tabs
set autoindent	            " copy ident from current line
set copyindent

set ignorecase	            " ignore case in search
set smartcase

set splitbelow
set splitright


" Appearance
" 

silent! set mouse=nvc       " Use the mouse, but not in insert mode
set number 	                " show line numbers
"set cursorline
set background  =dark

"colorscheme    desert      " Dark fonts
"colorscheme    elflord     " Bright fonts
"colorscheme    industry    " Gray font
"colorscheme    murphy      " Gray font, smooth
"colorscheme    torte       " Smoother

syntax on

"nmap <C-e>      :e#<CR>
"nmap <F6>       :tabe <CR>
"nmap <F7>       :tabp <CR>
"nmap <F8>       :tabn <CR>
nmap <C-n>      :bnext<CR>
nmap <C-p>      :bprev<CR>
nmap <C-b>      :buffers <CR>
nmap <C-w>      :bd <CR>
nmap <C-x>      :qall <CR>
