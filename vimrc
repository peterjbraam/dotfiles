set backup

set nocompatible              " be iMproved, required
filetype off                  " required
set ignorecase
set smartcase
set incsearch

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set tags=./tags;/  "find tags in current or ancestor directory

" set number

" FILE NAME COMPLETION
set wildmode=longest,list  " ,full - seems to insert too much in pathname completion
set wildmenu

" HIDDEN BUFFERS
set hidden


set bs=indent,eol,start     " Backspace over everything in insert mode
syntax on 

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list

" Make column 81 stand out
highlight ColorColumn ctermbg=magenta
set colorcolumn=81

" Control tabs
:set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

filetype off  " Required for Vundle installation
" Enable file type detection
if has("autocmd")
    filetype on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    autocmd FileType c setlocal ts=8 sts=8 sw=8 expandtab
    autocmd FileType cpp setlocal ts=8 sts=8 sw=8 expandtab
    autocmd FileType haskell setlocal ts=4 sts=4 sw=4 expandtab
    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

function! <SID>StripTrailingWhitespaces()
Preparation: save last search, and cursor position.
     let _s=@/
     let l = line(".")
     let c = col(".")
     " Do the business:
     %s/\s\+$//e
     " Clean up: restore previous search history, and cursor position
     let @/=_s
     call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" VUNDLE 

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}



" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
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

" TagBar
"nmap <F8> :TagbarToggle<CR>


" SYNTASTIC

"let g:syntastic_check_on_wq = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_jump = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"let g:pymode_lint_write = 0
"let g:ycm_show_diagnostics_ui = 0
