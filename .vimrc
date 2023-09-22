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
" highlight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'bohlender/vim-smt2'

" git wrapper
Plugin 'tpope/vim-fugitive'

Plugin 'Superbil/llvm.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'vhda/verilog_systemverilog.vim'


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

set showmatch  " show matching brackets.
set smartcase  " do smart case matching
set hidden     " Hide buffers when they are abandoned
setlocal noswapfile " do not generate swap file
set bufhidden=hide
set ruler

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
set softtabstop=4 " delete white space with delete key
set shiftwidth=4 " << and >> move
set tabstop=2 " tab = 2 white space
set smartindent " auto indent for new line

set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息

set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1

set autochdir " chdir to the file dir
set backspace=indent,eol,start
set magic

" nerdtree clickable
set mouse=a

" fix nerdtree dir scrambled characters
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
