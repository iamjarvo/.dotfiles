set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
" Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'fortes/vim-railscasts'
Plug 'gmarik/Vundle.vim'
Plug 'guns/vim-clojure-static'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'jgdavey/vim-blockle'
Plug 'kaichen/vim-snipmate-ruby-snippets'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
" Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ngmy/vim-rubocop'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-vividchalk'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'vim-ruby/vim-ruby'
" Plug 'vim-scripts/paredit.vim'
Plug 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call plug#end()

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming
set mouse=a             " Mouse support

set showcmd             " display incomplete commands
set noswapfile          " do no create swp files
set nobackup            " do not keep a backup file
set number              " show line numbers
set relativenumber      " turn on relative numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should


set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list


" colors
" autocmd ColorScheme * highlight Normal ctermbg=0
" autocmd ColorScheme * highlight Visual ctermbg=0
" gui settings
"if (&t_Co == 256 || has('gui_running'))
  " colorscheme base16-apathy
"  if ($TERM_PROGRAM == 'iTerm.app')
    set guifont=Inconsolata-g\ for\ Powerline:h18
"  endif
"endif
"set background="dark"
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
nmap <Leader>nh :noh<CR>

nmap ig :IndentGuidesToggle<CR>


" vim-airline
set laststatus=2
" let g:airline_powerline_fonts = 1
set term=xterm-256color " need this for airline to work in tmux

iabbr bpry require'pry';binding.pry

"let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" snipmate
imap <C-t> <Plug>snipMateNextOrTrigger

colorscheme base16-eighties
set colorcolumn=81
set t_ut=

runtime macros/matchit.vim
nmap <Leader>c gcc


" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude=*cassettes*.yml']

" automatically set paste
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <Leader>P :set paste<CR>O<esc>"*]p:set nopaste<cr>

" open vimrc in tabe
map <Leader>vi :tabe ~/.vimrc<CR>

" reload vimrc
map <Leader>r :source ~/.vimrc<CR>
