set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/VimIRC.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

Plugin 'derekwyatt/vim-scala'

Plugin 'vim-pandoc/vim-pandoc'

Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set rnu

colorscheme molokai

set laststatus=2
au InsertEnter * hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
au InsertLeave * hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0

" default the statusline to purple when entering Vim
hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0

" Formats the statusline
set statusline=%f                           " file name
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
