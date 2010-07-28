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
set expandtab

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


"FuzzyFinder
"http://github.com/jamis/fuzzy_file_finder/
"let g:fuzzy_ignore = "*.log,*.png,*.jpg,*.sw*"
"let g:fuzzy_matching_limit = 50
"map <tab> :FuzzyFinderTextFile<CR>
"map <leader>b :FuzzyFinderBuffer<CR>

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme ir_black
else
  colorscheme default
endif

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

autocmd FileType ruby let b:surround_35 = "#{\r}"
autocmd FileType ruby let b:surround_58 = ":\r"


"autocmd Filetype ruby source ~/.vim/ruby-macros.vim

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes


" Some tricks for mutt
" F1 through F3 rewraps paragraphs
augroup MUTT
  au BufRead ~/.mutt/temp/mutt* set spell " <-- vim 7 required
augroup END

set gfn=ProggyCleanTTSZ\ 12
set go=aegimrLtT

if has("gui_running")
  let moria_style = 'dark'
  colorscheme moria
else
  colorscheme default
endif

let g:speckyBannerKey = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey = "<C-S>r"
let g:speckySpecSwitcherKey = "<C-S>x"
let g:speckyRunSpecKey = "<C-S>s"
let g:speckyRunSpecCmd = "spec -fs -r loadpath.rb"
let g:speckyRunRdocCmd = "fri -L -f plain"
let g:speckyWindowType = 2

