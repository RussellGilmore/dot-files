" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Determine the type of a file based on its name
" Use this to allow intelligent auto-indenting
if has('filetype')
  filetype indent plugin on
endif


set number
set spell
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set cursorline
set rtp+=/opt/homebrew/opt/fzf
