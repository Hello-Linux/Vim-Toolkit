set nocompatible              " be iMproved, required
set number
set guifont=Courier\ New:h3
set backspace=2
set t_Co=256
set laststatus=2
set lazyredraw
set mouse=nv
set guifont=DroidSansMonoForPowerlineNerdFont\ 12
set pastetoggle=<F1>
set autoread

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

"++++++++++++++++neocomplete config++++++++++++++++++++
let g:neocomplete#enable_at_startup = 1
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

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
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/neco-vim'
Plugin 'Yggdroot/indentLine'
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

