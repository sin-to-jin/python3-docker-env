syntax on
set cursorline
set hlsearch
set t_Co=256
highlight Comment ctermfg=DarkCyan
set number
set notitle
set titlestring=haru
set autoindent
set encoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=Green
highlight PmenuSbar ctermbg=Green
set statusline+=[L=%l/%L]
set showmatch
set smartindent
set mouse=a
set showcmd
set cmdheight=2
set hidden
set wrapscan
set runtimepath+=~/.vim/bundle/neobundle.vim/
set expandtab
set tabstop=2
set shiftwidth=2
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'grep.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'elzr/vim-json'
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Lokaltog/powerline-fontpatcher'
NeoBundle 'derekwyatt/vim-scala'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
let g:syntastic_javascript_checker = "jshint" "JavaScriptのSyntaxチェックはjshintで
let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set noshowmode
