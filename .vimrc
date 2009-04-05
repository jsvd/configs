set nocompatible      " We're running Vim, not Vi!
set number
set incsearch
set hlsearch
set mouse=a
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set grepprg=ack
set grepformat=%f:%l:%m
let g:fuzzy_ignore = "*.log,*.png,*.jpg"
let g:fuzzy_matching_limit = 70

map <tab> :FuzzyFinderTextMate<CR>
"map <leader>b :FuzzyFinderBuffer<CR>
"autocmd Filetype ruby source ~/.vim/ruby-macros.vim 

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme default
endif 

autocmd FileType ruby let b:surround_35 = "#{\r}"
autocmd FileType ruby let b:surround_58 = ":\r"
