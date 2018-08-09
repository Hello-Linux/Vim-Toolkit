set nocompatible              " be iMproved, required
set number
syntax on
set guifont=Courier\ New:h3
set t_Co=256
set hlsearch
set laststatus=2
set backspace=2
set lazyredraw
set mouse=nv
set guifont=DroidSansMonoForPowerlineNerdFont\ 12
set pastetoggle=<F1>
set autoread
set shell=/bin/bash
set encoding=utf-8

"+++++++++++++++set config for indent++++++++++++
set tabstop=2
set autoindent
set confirm
set smartindent
set shiftwidth=2
"+++++++++++++++++++++vim-indent-line+++++++++++++++++
let g:indentLine_color_term = 100
let g:indentLine_char = '¦'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
autocmd FIletype yaml setlocal tabstop=2 softtabstop=3 shiftwidth=2 autoindent smartindent
autocmd FIletype python setlocal tabstop=4 expandtab shiftwidth=4 autoread nocompatible confirm autoindent smartindent
"+++++++++++++++++++++++++++++++++++++++++++++++++++
"++++++++++Airline Plugin settings++++++++++++++++++
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '+'
let g:airline#extensions#tabline#formatter = 'default'
"++++++++++++++++++++++++++++++++++++++++++++++++++++
"height ligth cusor
set bg=dark
highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236

"++++++++++++++++SimpylFold configuration ++++
let g:SimpylFold_docstring_preview = 1
"Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za


"+++++++++++++++YouCompleteMe configuration+++++++++++

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2

"old version
if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
endif
" new version
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif
"mapping
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
       \ 'gitcommit' : 1,
       \}



"++++++++++++++++++ansible-vim Plugin++++++++++++++++
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ab"
let g:ansible_name_highlight = 'b'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }
let g:ansible_yamlKeyName = 'yamlKey'
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
"++++++++++++++++++++++++++++++++++++++++++++++++++++
nmap <F2> :NERDTree<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '✚'
let g:NERDTreeDirArrowCollapsible = '▾'
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"syntastic plugin settings++++++++++++++++++++++++++++
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++++nerdtree configuration+++++++++++++++++
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeAutoCenter = 1
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 35
let NERDTreeShowBookmarks = 1
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++++++++++++++tagbar configuration++++++


"++++++++++++++++++++++++minibufferexplore config+++++++++++++++++++
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
map <F6> :MBEbp<CR>
map <F7> :MBEbn<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
nmap <F3> :TagbarToggle<CR>
autocmd VimEnter * nested :TagbarOpen
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 60
let g:tagbar_indent = 1
let g:tagbar_iconchars = ['▶', '▼']
let g:tagbar_autoshowtag = 1
let g:tagbar_vertical = 30
let g:tagbar_compact = 1
autocmd VimEnter * wincmd l
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
"++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++check trailing whitespace+++++++++++++++++++++++++++++
map <F5> :FixWhitespace<CR>
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"++++++++++++++++++++++++rainbow_parentheses.vim++++++++++++++++++++++++
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_loadcmd_toggle = 0
let g:rbpt_max = 16
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"+++++++++++++++++++++nerdcommenter config++++++++++++++++++++++++++++++
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code" indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


"++++++++++++++++++++++++++++++++fuzzy finder config+++++++++++++++++++++++
" If installed using git
set rtp+=~/.fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


""for python docstring ", 特别有用
au FileType python let b:delimitMate_nesting_quotes = ['"']

filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/nvim-yarp/
set runtimepath+=~/.vim/bundle/vim-hug-neovim-rpc/
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
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'junegunn/fzf.vim'
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dracula/vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
""
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
autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"
func SetTitle()
        if (&filetype == 'c' || &filetype == 'cpp')
                call setline(1, "/*************************************************************************")
                call setline(2, "\ @Author: 你的名字")
                call setline(3, "\ @Created Time : ".strftime("%c"))
                call setline(4, "\ @File Name: ".expand("%"))
                call setline(5, "\ @Description:")
                call setline(6, " ************************************************************************/")
                call setline(7,"")
        endif
        if &filetype == 'shell'
                call setline(1, "\#!/bin/sh")
                call setline(2, "\# Author: 你的名字")
                call setline(3, "\# Created Time : ".strftime("%c"))
                call setline(4, "\# File Name: ".expand("%"))
                call setline(5, "\# Description:")
                call setline(6,"")
        endif
        if &filetype == 'python'
                call append(0, '#!/bin/env python3.7')
                call append(1, '#   Version: v1.0.1')
                call append(2, '#   Filename: '.expand("%"))
                call append(3, '#   Author: Linux - hello_linux@aliyun.com')
                call append(4, '#   Description: ---')
                call append(5, '#   Create: '.strftime("%Y-%m-%d %H:%M:%S"))
"    call append(9, '')
        endif
        if &filetype == 'java'
                call setline(1, "//coding=utf8")
                call setline(2, "/**")
                call setline(3, "\ *\ @Author: 你的名字")
                call setline(4, "\ *\ @Created Time : ".strftime("%Y-%m-%d %H:%M:%S")")
                call setline(5, "\ *\ @File Name: ".expand("%"))
                call setline(6, "\ *\ @Description:")
                call setline(7, "\ */")
                call setline(8,"")
        endif
endfunc
autocmd BufNewfile * normal G
