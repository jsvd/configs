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
set statusline=%t%(\ [%n%M]%)%(\ %H%R%W%)\ %(%c-%v,\ %l\ of\ %L,\ (%o)\ %P\ 0x%B\ (%b)%)\ %{fugitive#statusline()}

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

au BufNewFile,BufRead *.epl set filetype=sql

call pathogen#infect()
call pathogen#helptags()

" set theme
set t_Co=256
colorscheme Tomorrow-Night

" color useless whitespace
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\|\t/

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;gray\x7"
  silent !echo -ne "\033]12;gray\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

let g:NERDTreeDirArrows=0

"------------------------------------------------------------
" CtrlP
"------------------------------------------------------------
" Remap ctrlp trigger key
let g:ctrlp_map = '`'

" make ctrlp show up on top
let g:ctrlp_match_window_bottom = 0
" Set the max files
let g:ctrlp_max_files = 5000

" Optimize file searching
if has("unix")
    let g:ctrlp_user_command = {
                \   'types': {
                \       1: ['.git/', 'cd %s && git ls-files']
                \   },
                \   'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
                \ }
endif
