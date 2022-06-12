set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Make sure curl is installed 'sudo apt install curl' """""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'

" Code
Plug 'dense-analysis/ale'
" Plug 'davidhalter/jedi-vim'

" Visual
Plug 'ap/vim-css-color'
Plug 'w0ng/vim-hybrid'

call plug#end()

" dense-analysis/ale
let g:ale_linters = {'python': ['flake8']}
let b:ale_fixers = {'python': ['black','isort']}  " ['isort']
let g:ale_python_flake8_options = '
\ --ignore=F403,E402,E111,E114,E302,E306,E125,E731,W504,E305,E221,E129,C741,E704,E701,E702,E722,E201,E241,E401'
let g:ale_fix_on_save = 1

" davidhalter/jedi-vim
let g:jedi#force_py_version = 3

" w0ng/vim-hybrid
let g:hybrid_custom_term_colors = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Yggdroot/indentLine
" let g:indentLine_setConceal = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set lazyredraw
set autoindent
set backspace=indent,eol,start
set expandtab
set cursorline
set number
set ruler

syntax on
set noswapfile
set hlsearch
set ignorecase
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leaving insert mode.
inoremap <c-c> <esc>
inoremap <c-v> <esc>
vnoremap <c-c> <esc>
vnoremap <c-v> <esc>

" No shift for command mode.
nnoremap ; :

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Space as leader key
map <Space> <nop>
let mapleader = " "

" Leader key shortcuts.
vmap <leader>k gc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
" set background=light
colorscheme hybrid

" w0ng/vim-hybrid
" if exists('g:colors_name') && g:colors_name == 'hybrid'
"   hi CursorLineNr ctermbg=black
"   hi ErrorMsg           cterm=none ctermfg=red   ctermbg=none
"   hi SpellBad           cterm=none ctermfg=black ctermbg=red
"   hi TabLine            cterm=none ctermfg=gray  ctermbg=black
"   hi MatchParen         cterm=none ctermfg=lightgray  ctermbg=lightblue
"   hi TabLineFill        cterm=none ctermfg=none  ctermbg=black
"   hi TabLineSel         cterm=bold ctermfg=gray  ctermbg=none
"   hi DiffAdd            cterm=none ctermfg=none  ctermbg=green
"   hi DiffChange         cterm=none ctermfg=none  ctermbg=blue
"   hi DiffDelete         cterm=none ctermfg=none  ctermbg=red
"   hi SyntasticErrorSign cterm=none ctermfg=red   ctermbg=none
" endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Languages
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" function! PythonSyntax()
"   syntax match MyPythonSelf "\<self\>\.\?"
"   syntax match MyPythonLibrary "\<np\.\|\<tf\.\|\<scipy\.\<os\."
"   syntax match MyPythonKwarg "\((\| \)\@<=\<[A-Za-z0-9_]\+\>="
"   syntax match MyPythonNumber "\<[0-9.]\+\>\.\?"
"   hi MyPythonSelf    cterm=none ctermfg=gray ctermbg=none
"   hi MyPythonLibrary cterm=none ctermfg=gray ctermbg=none
"   hi MyPythonKwarg   cterm=none ctermfg=magenta ctermbg=none
"   hi MyPythonNumber  cterm=none ctermfg=red ctermbg=none
" endfunction

" autocmd BufNewFile,BufRead *.md set filetype=markdown
" autocmd BufNewFile,BufRead *.ad set filetype=asciidoc
" autocmd BufNewFile,BufRead *.cls set filetype=tex
" autocmd BufNewFile,BufRead *.scss set tw=0
" autocmd FileType * set conceallevel=0

autocmd FileType python setlocal ts=2 sw=2 sts=2
autocmd FileType python setlocal tw=88
" autocmd FileType python call PythonSyntax()
" " autocmd FileType python,sh setlocal iskeyword-=_
" autocmd FileType markdown,tex set conceallevel=0

" set runtimepath+=~/.vim_runtime

" source ~/.vim_runtime/vimrcs/basic.vim
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry
