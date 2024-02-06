"
" vim-plug settings
"

" Install vim-plug before use
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Add some plugins
call plug#begin('~/.vim/plugged')

" vim-polyglot
Plug 'sheerun/vim-polyglot'

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Enable gopls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" deoplete
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
" Enable at startup
"let g:deoplete#enable_at_startup = 1
" Enable for go
"call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" coc.nvim
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"source $HOME/.vim/config/coc.vim

" nerdtree
Plug 'preservim/nerdtree'
" Auto load
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Auto exit
" Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" vim-airline
"Plug 'vim-airline/vim-airline'
"let g:airline_section_z="(row\ %l\/%L\ col\ %c\ %P)"

" lightline
"Plug 'itchyny/lightline.vim'

" Filetype-based icon
Plug 'ryanoasis/vim-devicons'

" Some themes
"Plug 'rakr/vim-one'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'joshdick/onedark.vim'

call plug#end()

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    " For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Set the colorscheme
"colorscheme one

"
" Editor settings
"

" Use vim instead of vi
set nocompatible
" Set charset
set encoding=utf-8

" Show current mode
set showmode
" Show already typed keys when more are expected
set showcmd
" Always show statusline
set laststatus=2
" Customize statusline
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (row\ %l\/%L\ col\ %c\ %P)
" Show as much as possible of the last line.
set display=lastline

" Auto read file if changed
set autoread
" Faster redrawing
set ttyfast
" Only redraw when necessary
set lazyredraw
" Always report changed lines
set report=0

" Enable syntax highlight
set syntax=on

" Enbale line number
set number
" Use relative line number
set relativenumber
" Use relative line number only in normal mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Change tab size
set autoindent expandtab tabstop=4 shiftwidth=4 shiftround
" Make backspace work as you would expect
set backspace=indent,eol,start

" Switch between buffers without having to save first.
set hidden

" Display command tab complete options as a menu
set wildmenu

" Enable line highlight
set cursorline

" Highlight while searching
set incsearch
" Keep matches highlighted
set hlsearch
" Keep matches in the middle of screen
nnoremap n nzz
nnoremap N Nzz

" Enable syntax-based folding
set foldmethod=syntax
" Start from level 1
set foldlevelstart=1

" Open new windows below the current window
set splitbelow
" Open new windows right of the current window
set splitright

" Enable mouse control and selection
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" Show non-printable characters
"set list
"let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'

" Set netrw mode
let g:netrw_liststyle=3
" Set netrw window size
let g:netrw_winsize=30

" Set the viminfo file location
set viminfo+=n~/.vim/viminfo
" Set the swap file directory
set directory=$HOME/.vim/swap//
" Enable backup
set backup
" Set the backup file directory
set backupdir=$HOME/.vim/backup//
" Enable persistent undo
set undofile
" Set undo file directory
set undodir=$HOME/.vim/undo//

" Highlight trailing whitespace
match ErrorMsg '\s\+$'
" Remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

" Enable auto completion of brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {<CR>}<Esc>O
