set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'fortes/vim-railscasts'
Plugin 'gmarik/Vundle.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'kaichen/vim-snipmate-ruby-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ngmy/vim-rubocop'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-vividchalk'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/paredit.vim'

" All of your Plugins must be added before the following line
call vundle#end()

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming
set mouse=a             " Mouse support

set showcmd             " display incomplete commands
set noswapfile          " do no create swp files
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should

" colors
autocmd ColorScheme * highlight Visual ctermbg=236
" gui settings
if (&t_Co == 256 || has('gui_running'))
  if ($TERM_PROGRAM == 'iTerm.app')
    colorscheme vividchalk
  endif
endif
set background="dark"
syntax on               " turn syntax highlighting on by default

filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

" Soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4

" smart splitting
set splitbelow
set splitright

" rainbow_parentheses.vim
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = len(g:rbpt_colorpairs)

" unhighlight searches
nmap nh :noh<CR>

nmap ig :IndentGuidesToggle<CR>

" The Silver Searcher
let g:ag_binary = system("which ag | xargs echo -n")
if filereadable(g:ag_binary)
  let g:ackprg = g:ag_binary . ' --nocolor --nogroup --column'
    let g:ctrlp_user_command = g:ag_binary . ' %s -l --nocolor -g ""'
endif

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
set term=xterm-256color " need this for airline to work in tmux

iabbr bpry require'pry';binding.pry

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" snipmate
imap <C-t> <Plug>snipMateNextOrTrigger

set colorcolumn=81
