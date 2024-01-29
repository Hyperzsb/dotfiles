"
" vim-plug settings
"

" Auto install vim-plug before use
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add some plugins

call plug#begin('~/.vim/plugged')

" vim-go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" nerdtree
Plug 'preservim/nerdtree'

" vim-polyglot
Plug 'sheerun/vim-polyglot'

" Some themes
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'

call plug#end()

"
" End of vim-plug settings
"

"
" True color and theme settings
"

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Set the colorscheme
"colorscheme one

"
" End of true color and theme settings
"

"
" Editor settings
"

" Auto read file if changed
set autoread

" Enable syntax highlight
set syntax=on

" Enbale line number
set number

" Change tab size
set autoindent expandtab tabstop=4 shiftwidth=4

" Enable line highlight
set cursorline

" Enable auto completion of brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {<CR>}<Esc>O

" Enable mouse control and selection
set mouse=a
set selection=exclusive
set selectmode=mouse,key

set nocompatible

" Auto load NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Auto exit NERDTree
" Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Enable gopls in vim-go
""let g:go_def_mode='gopls'
""let g:go_info_mode='gopls'

"
" End of editor settings
"

