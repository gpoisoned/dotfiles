" Vundle / plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tomtom/tcomment_vim'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/gitignore'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/ctrlp.vim'
Plugin 'ngmy/vim-rubocop'
call vundle#end()
filetype plugin indent on

" General environment stuff
set encoding=utf-8
syntax enable                        " enable syntax highlighting
set nomodeline                       " don't allow files to set vim settings
set hidden                           " allow switching buffers without saving first
set nostartofline                    " keep cursor column in some situations where vi would jump to 0
set mouse=a                          " enable mouse in all modes
set tags=./tags                      " use CTags output
set omnifunc=syntaxcomplete#Complete " Use omnicompletion
set clipboard=unnamedplus            " d, y, p use system clipboard
set ttimeout                         " time out on key codes
set ttimeoutlen=500                  " ...in half a second
set scrolloff=2                      " keep 2 lines above and below current line on screen
set sidescrolloff=10                 " ...and 10 columns left and right
set display+=lastline                " don't replace last line with @@@ if it doesn't fit
set autoread                         " automatically re-read file when modified outside of vim
set fileformats+=mac                 " handle weird line endings
set grepprg=ag\ --nogroup\ --nocolor " use Ag instead of grep

" Use project settings for rubocop
let g:vimrubocop_config = 'config/.rubocop.yml'

" CtrlP options
let g:ctrlp_user_command = 'ag %s -l -S --nocolor --ignore tmp -g ""'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_use_caching = 0 " ag is fast enough that we don't need this

" Mappings
let mapleader = " "
inoremap jk <esc>
nnoremap ; :
nnoremap <leader>w :w<cr>
nnoremap <leader>Q :qa<cr>
nnoremap <leader><tab> :bnext<cr>
nnoremap <leader><s-tab> :bprevious<cr>
nnoremap <leader>W :bdelete<cr>
nnoremap <leader>o :CtrlPMixed<cr>
nnoremap <leader>s :Ag -S --ignore tmp --ignore vendor --ignore db --ignore spec ""<left>

" Colors
set t_Co=16                           " double the colors!!1
highlight Pmenu ctermfg=0 ctermbg=7
highlight PmenuSel ctermfg=15 ctermbg=7 cterm=Bold
highlight Visual ctermbg=8
if &diff
  syntax off
  highlight DiffAdd ctermfg=4 ctermbg=7 cterm=none
  highlight DiffDelete ctermfg=1 ctermbg=7 cterm=none
  highlight DiffChange ctermfg=none ctermbg=7 cterm=none
  highlight DiffText ctermfg=4 ctermbg=7 cterm=none
end

" Status line
set laststatus=2                             " always display status line
set wildmenu                                 " show possible completions of command
let g:airline_powerline_fonts=1              " use FANCY symbols
let g:airline#extensions#tabline#enabled = 1 " show open buffers in tab line

" Whitespace
set nowrap                     " don't wrap lines
set tabstop=2                  " \t counts for two columns
set shiftwidth=2               " reindent uses two columns
set softtabstop=2              " tab key inserts two columns
set expandtab                  " never insert \t
set backspace=indent,eol,start " backspace in insert mode goes past these
set autoindent                 " if no filetype setting, keep indent from previous line

" Search
set hlsearch   " highlight matches of current search
set incsearch  " search while typing
set ignorecase " ignore case in searching
set smartcase  " ...unless the search is not all lowercase

