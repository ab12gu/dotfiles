" filename: vimrc.vim
" by: Abhay Gupta
" date: 20-11-28
" desc: vim configuration file

""" Add this vim configuration file to vimrc 
"
" filename: .vimrc
" desc: vim configuration file
" let path="/mnt/c/Users/GuptaAb/OneDrive - Lam Research/Documents/cloud_drive/sys-tools/dotfiles/"
" let file="vimrc.vim"
" execute 'source' path . file


""" Standard Vim settings

"Set" syntax colors
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
"Set highlight searching. to search, use / in editor followed by 'word'
set hlsearch
"Set a color-limit highlight
set colorcolumn=70,80,100,120
"Set colors: first is standard && second in gvim
hi ColorColumn ctermbg=17 guibg=LightBlue
hi LineNr ctermfg=LightBlue guibg=LightBlue
"Set color-column colors (first:nongui || second:gui)

"Set a text width limit
"set textwidth=80

"highlight current line
"set cursorline

" Allow vim to copy to clipboard
" source: https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows
" Highlight with visual block and copy with ctrl + c
" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

""" Plugins for vim
set runtimepath+=~/.vim/bundle/nerdtree
