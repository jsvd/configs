" File: maroloccio.vim

" Description: a colour scheme for Vim (GUI only)

" Scheme: maroloccio
" Maintainer: Marco Ippolito < m a r o l o c c i o [at] g m a i l . c o m >

" Comment: only works in GUI mode

" Version: v0.2.4, inspired by watermark
" Date: 9 February 2009
" History:
" 0.2.3 Added FoldColumn to the list of hlights as per David Hall's suggestion
" 0.2.2 Removed cterm support, changed visual highlight, fixed bolds
" 0.2.1 Changed search highlight
" 0.2.0 Removed italics
" 0.1.9 Improved search and menu highlighting
" 0.1.8 Added minimal cterm support
" 0.1.7 Uploaded to vim.org
" 0.1.6 Removed redundant highlight definitions
" 0.1.5 Improved display of folded sections
" 0.1.4 Removed linked sections for improved compatibility, more Python friendly
" 0.1.3 Removed settings which usually belong to .vimrc (as in 0.1.1)
" 0.1.2 Fixed versioning system, added .vimrc -like commands
" 0.1.1 Corrected typo in header comments, changed colour for Comment
" 0.1.0 Inital upload to vim.org

" ------------------------------------------------------------------------------

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="maroloccio"

" ------------------------------------------------------------------------------

highlight  Normal          guifg=#8b9aaa  guibg=#1a202a  gui=none   "watermark

highlight  LineNr          guifg=#2c3138  guibg=#0e1219  gui=none   "maroloccio
highlight  FoldColumn      guifg=#2c3138  guibg=#0e1219  gui=none   "maroloccio

highlight  TabLine         guifg=#8b9aaa  guibg=black    gui=none   "maroloccio
highlight  StatusLine      guifg=#8b9aaa  guibg=black    gui=none   "maroloccio
highlight  StatusLineNC    guifg=#2c3138  guibg=black    gui=none   "maroloccio

highlight  WildMenu        guifg=#8b9aaa  guibg=#0e1219  gui=none   "maroloccio

highlight  Folded          guifg=#8b9aaa  guibg=#333366  gui=none   "maroloccio
highlight  VertSplit       guifg=#8b9aaa  guibg=#333366  gui=none   "maroloccio

highlight  Visual          guifg=#8b9aaa  guibg=#3741ad  gui=none   "maroloccio

highlight  Search          guifg=#78ba42  guibg=#107040  gui=none   "maroloccio

highlight  IncSearch       guifg=#0e1219  guibg=#82ade0  gui=bold   "maroloccio

highlight  Cursor          guifg=#0e1219  guibg=#8b9aaa  gui=none   "maroloccio

highlight  NonText         guifg=#333366  "gui=none      "metal     "maroloccio
highlight  SpecialKey      guifg=#333366  "gui=none      "metal     "maroloccio

highlight  Todo            guifg=#8f3231  guibg=#0e1219             "maroloccio
highlight  Todo            guisp=#cbc32a  gui=bold,undercurl        "maroloccio

highlight  Conditional     guifg=#ff9900  gui=none       "orange    "maroloccio

highlight  Repeat          guifg=#78ba42  gui=none       "lit green "maroloccio

highlight  String          guifg=#4c4cad  gui=none       "violet    "maroloccio

highlight  Number          guifg=#8b8b00  gui=none       "dk yellow "maroloccio

highlight  Constant        guifg=#82ade0  gui=none       "cyan      "maroloccio
highlight  Character       guifg=#82ade0  gui=none       "cyan      "maroloccio
highlight  Boolean         guifg=#82ade0  gui=none       "cyan      "maroloccio
highlight  Float           guifg=#82ade0  gui=none       "cyan      "maroloccio

highlight  Function        guifg=#ffcc00  gui=none       "yellow    "maroloccio
highlight  Type            guifg=#ffcc00  gui=none       "yellow    "maroloccio
highlight  StorageClass    guifg=#ffcc00  gui=none       "yellow    "maroloccio
highlight  Structure       guifg=#ffcc00  gui=none       "yellow    "maroloccio
highlight  Typedef         guifg=#ffcc00  gui=none       "yellow    "maroloccio

highlight  PreProc         guifg=#107040  gui=none       "green     "maroloccio
highlight  Include         guifg=#107040  gui=none       "green     "maroloccio
highlight  Define          guifg=#107040  gui=none       "green     "maroloccio
highlight  Macro           guifg=#107040  gui=none       "green     "maroloccio
highlight  PreCondit       guifg=#107040  gui=none       "green     "maroloccio

highlight  Error           guifg=#8b9aaa  guibg=#8f3231  "red bkgr  "maroloccio

highlight  Underlined      gui=bold,underline            "underline "maroloccio

highlight  Exception       guifg=#8f3231  gui=none       "red       "maroloccio
highlight  Title           guifg=#8f3231  gui=none       "red       "maroloccio

highlight  Statement       guifg=#9966cc  gui=none       "lavender  "maroloccio

highlight  Comment         guifg=#006666  gui=none       "teal      "maroloccio

highlight  SpecialComment  guifg=#2680af  gui=none       "blue2     "maroloccio

highlight  Operator        guifg=#6d5279  gui=none       "pink      "maroloccio

highlight  Special         guifg=#3741ad  gui=none       "blue      "maroloccio
highlight  SpecialChar     guifg=#3741ad  gui=none       "blue      "maroloccio
highlight  Tag             guifg=#3741ad  gui=none       "blue      "maroloccio
highlight  Delimiter       guifg=#3741ad  gui=none       "blue      "maroloccio

highlight  Label           guifg=#7e28a9  gui=none       "purple    "maroloccio

if version >= 700

highlight  Pmenu           guifg=#8b9aaa  guibg=#3741ad  gui=none   "maroloccio
highlight  PmenuSel        guifg=#8b9aaa  guibg=#333366  gui=none   "maroloccio

highlight  CursorLine      guibg=#0e1219  "guifg=        gui=none   "maroloccio
highlight  CursorColumn    guibg=#0e1219  "guifg=        gui=none   "maroloccio

highlight  MatchParen      guifg=#0e1219  guibg=#78ba42  gui=none   "maroloccio

endif

" ------------------------------------------------------------------------------
