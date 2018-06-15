set nocompatible              " be iMproved, required
set cursorline  
set number
set guifont=Courier\ New:h10
set t_Co=256
set laststatus=2
set lazyredraw
"++++++++++Airline Plugin settings++++++++++++++++++
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '》'
let g:airline#extensions#tabline#left_alt_sep = '+'
let g:airline#extensions#tabline#formatter = 'default'
"++++++++++++++IndentLine Plugin settings++++++++++++
let g:indentLine_setColors = 1
let g:indentLine_color_term = 2
let g:indentLine_char = '¦'
"++++++++++++++++++++++++++++++++++++++++++++++++++++

"++++++++++++++++++ansible-vim Plugin++++++++++++++++
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'b'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
"++++++++++++++++++++++++++++++++++++++++++++++++++++
nmap <F2> :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '✚'
let g:NERDTreeDirArrowCollapsible = '▾'
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"


"syntastic plugin settings++++++++++++++++++++++++++++
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++++ctrlp configuration+++++++++++++++++
let g:ctrlp_map = '<Leader>c'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++++++++++++++tagbar configuration++++++
nmap <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'  
let g:tagbar_width = 60
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
"++++++++++++++++++++++++++++++++++++++++++++++++++++++

"for python docstring ", 特别有用
au FileType python let b:delimitMate_nesting_quotes = ['"']

filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'pearofducks/ansible-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-git'
Plugin 'tomasr/molokai'
Plugin 'neutaaaaan/iosvkem'
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
