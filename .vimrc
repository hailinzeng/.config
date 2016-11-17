" // start of vim plugin manager Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Syntax checking"
Plugin 'vim-syntastic/syntastic'
" File Tree plugin NERDTree
Plugin 'scrooloose/nerdtree'
" Auto complete plugin
" Plugin 'Valloric/YouCompleteMe'
" colorscheme
Plugin 'tomasr/molokai'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'inside/vim-search-pulse'
" additional syntax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'
" visually displaying indent
Plugin 'nathanaelkane/vim-indent-guides'
" fast jump to search matched, \\s
Plugin 'Lokaltog/vim-easymotion'
" class outline viewer
Plugin 'majutsushi/tagbar'
" fuzzy open file
Plugin 'ctrlpvim/ctrlp.vim'
" show git diff
Plugin 'airblade/vim-gitgutter'
" multiple python support
Plugin 'klen/python-mode'

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
" // end of vim plugin manager Vundle
set hlsearch
set incsearch
set ignorecase

syntax on
filetype plugin on
colorscheme molokai
set t_Co=256

"if (&filetype=='c' || &filetype=='cpp' || &filetype=='h')
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p

  " class outline viewer : F8
  nmap <F8> :TagbarToggle<CR>
"endif

set cursorcolumn
set cursorline

set number


" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1

" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
