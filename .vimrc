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


"
" vim-plug setting
"

" Auto install vim-plug before use

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add some plugins

call plug#begin('~/.vim/plugged')

" File Explorer & Manager
Plug 'preservim/nerdtree'
" Some themes
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

"
" End of vim-plug setting
"

" True color setting
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif
" Another method
"if (empty($TMUX))
"  if (has("nvim"))
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

" onehalf theme setting
"colorscheme onehalfdark
"let g:airline_theme='onehalflight'

" vim-one theme setting
" colorscheme one
"set background=235

"highlight Normal ctermbg=235
