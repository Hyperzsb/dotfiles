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
    " - A solid language pack for Vim
    " - Learn more at https://github.com/sheerun/vim-polyglot
    Plug 'sheerun/vim-polyglot'

    " vim-go
    " - Go development plugin for Vim
    " - Learn more at https://github.com/fatih/vim-go
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Enable gopls
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'

    " deoplete
    " - Dark powered asynchronous completion framework for neovim/Vim8
    " - Learn more at https://github.com/Shougo/deoplete.nvim
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
    " - Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers
    " - Learn more at https://github.com/neoclide/coc.nvim
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "source $HOME/.vim/config/coc.vim

    " ack.vim with the silver searcher
    " - Vim plugin for the Perl module / CLI script 'ack'
    " - Learn more at https://github.com/mileszs/ack.vim
    Plug 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column'

    " fzf
    " - A command-line fuzzy finder
    " - Learn more at https://github.com/junegunn/fzf
    Plug 'junegunn/fzf'

    " nerdtree
    " - A tree explorer plugin for vim
    " - Learn more at https://github.com/preservim/nerdtree
    "Plug 'preservim/nerdtree'
    " Auto load
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
    " Auto exit
    " Close the tab if NERDTree is the only window remaining in it.
    "autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " vim-airline
    " - lean & mean status/tabline for vim that's light as air
    " - Learn more at https://github.com/vim-airline/vim-airline
    "Plug 'vim-airline/vim-airline'
    "let g:airline_section_z="(row\ %l\/%L\ col\ %c\ %P)"

    " lightline
    " - A light and configurable statusline/tabline plugin for Vim
    " - Learn more at https://github.com/itchyny/lightline.vim
    "Plug 'itchyny/lightline.vim'

    " vim-devicons
    " - Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
    " - Learn more at https://github.com/ryanoasis/vim-devicons
    "Plug 'ryanoasis/vim-devicons'

    " Some themes
    "Plug 'rakr/vim-one'
    "Plug 'sonph/onehalf', { 'rtp': 'vim' }
    "Plug 'joshdick/onedark.vim'
call plug#end()

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"
" Editor settings
"

" Use pure vim setting instead of vi-compatible setting
set nocompatible
" Set the charset
set encoding=utf-8
" Enable the filetype plugin
filetype plugin on

" Set the viminfo file location
set viminfo+=n$HOME/.vim/viminfo
" Set the swap file directory
set directory=$HOME/.vim/swap//
" Enable backup
set backup
" Set the backup file directory
set backupdir=$HOME/.vim/backup//
" Enable persistent undo
set undofile
" Set the undo file directory
set undodir=$HOME/.vim/undo//
set history=1000

" Set the colorscheme
"colorscheme one

" Show the current mode
set showmode
" Show already typed keys in operator-pending mode
set showcmd
" Always show the statusline
set laststatus=2
" Customize the statusline
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (row\ %l\/%L\ col\ %c\ %P)
" Show as much as possible of the last line.
set display=lastline

" Auto read the file if changed in other places
set autoread
" Enable faster redrawing
set ttyfast
" Only redraw when necessary
set lazyredraw
" Always report changed lines
set report=0

" Enable the syntax highlight
set syntax=on

" Enbale the line number
set number
" Enable the relative line number
set relativenumber
" Enable the relative line number only in the normal mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Change the tab size and behavior
set autoindent expandtab tabstop=4 softtabstop=4 shiftwidth=4 shiftround
" Make backspace work as expected
set backspace=indent,eol,start

" Switch between buffers without having to save first.
set hidden

" Display command tab complete options as a menu
set wildmenu

" Enable the line highlight
set cursorline

" Enable the smart case sensitivity
set smartcase
" Highlight the matches while searching
set incsearch
" Keep matches highlighted
set hlsearch
" Keep matches in the middle of screen while navigating
nnoremap n nzz
nnoremap N Nzz

" Enable the syntax-based folding
"set foldmethod=syntax
" Open all folds when entering a buffer
"set unfoldable

" Open new windows below the current window
set splitbelow
" Open new windows right of the current window
set splitright

" Enable the mouse control and selection
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" Show non-printable characters
set list
set listchars=tab:󰌒\ ,
"set listchars=tab:󰌒\ ,space:·,nbsp:␣,trail:•,eol:󰌑,precedes:«,extends:»

" Highlight trailing whitespace
match ErrorMsg '\s\+$'
" Remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

" Set the netrw mode
let g:netrw_liststyle=3
" Set the netrw window size
let g:netrw_winsize=30

" Enable auto completion of brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {<CR>}<Esc>O
