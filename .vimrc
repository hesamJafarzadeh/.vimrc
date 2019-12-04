syntax enable
set background=dark
set nocompatible              " be iMproved, required
set number
set autoindent
set tabstop=4
set shiftwidth=4
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" for html5 
Plugin 'othree/html5.vim'

" For Close Html Tag
Plugin 'alvan/vim-closetag'
" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try
" to close the current tag.

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified
" files.

let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>`
" will be closed while `<link>` won't.)

let g:closetag_emptyTags_caseSensitive = 1
" Shortcut for closing tags, default is '>'

let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line






"MY CHANGE 
"
"for render .vue file same as html
autocmd BufNewFile,BufRead *.vue set filetype=html

" for auto complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" in Monokai Theme
syntax enable

"Show Folder of Project 
let g:netrw_banner = 0
"let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
"let g:netrw_altv = 1
let g:netrw_winsize = 25

colorscheme monokai 
