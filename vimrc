set nocompatible      " We're running Vim, not Vi!
set number
set incsearch
set hlsearch
set mouse=a
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=500 " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Formatting (some of these are for coding in C and C++)
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set smarttab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"set list
" Show $ at end of line and trailing space as ~
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
"set statusline=%{GitBranch()}

set grepprg=ack
set grepformat=%f:%l:%m

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

autocmd FileType ruby let b:surround_35 = "#{\r}"
autocmd FileType ruby let b:surround_58 = ":\r"

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

set go=aegimrLtT

let g:solarized_termcolors=16
colorscheme solarized
set background=dark

au BufNewFile,BufRead *.epl set filetype=sql

call pathogen#infect()
call pathogen#helptags()

map ` :CommandT<CR>
let g:CommandTMatchWindowAtTop = 1
