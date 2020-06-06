""Manually add plugins to system
set runtimepath+=~/.vim/bundle/nerdtree

"Set syntax colors
colorscheme industry
"Allow syntax features
syntax on
"show line numbers
set number
"show last command on bottom right
set showcmd
"Visual autocomplete for command menu
set wildmenu
"Highlight matching [{()}]
set showmatch
"Allow backspace throughout program
set backspace=indent,eol,start
"load filetype-specific indent files

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Defensive tabbing? Ensure default values...
"softtabstop: a nonzero value will make the tab key insert a combo of spaces and tabs to simulate tabs at this width.... dumb as fuck...
"expandtab: tab key insert spaces instead of tab characters...
"set softtabstop=0 noexpandtab

"Set highlight searching. to search, use / in editor followed by 'word'
set hlsearch
"Set a text width limit
"set textwidth=80
"Set a color-limit highlight
set colorcolumn=100,120
"Set color-column colors (first:nongui || second:gui)
"hi ColorColumn ctermbg=LightBlue guibg=LightBlue

"Key-mapping (without recursion)

"highlight current line
"set cursorline
"Set visual tab spacing
"set tabstop=4
"Set editing tab spacing
"set softtabstop=4
"tabs are spaces

"Syntax Highlighting Function

