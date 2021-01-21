" Vim settings
" -------------------------------
set nocompatible                " No backwards compatibility
set number                      " Line numbers
set scrolloff=10                " Show 10 lines past EOF
set ruler                       " Show line and column numbers
set hidden                      " Hide buffers instead of quitting
set nowrap                      " Don't wrap lines
set expandtab                   " Tab produces spaces
set tabstop=4                   " 4 spaces per tab
set softtabstop=4               " 4 spaces per softtab
set shiftwidth=4                " 4 spaces for reindent
set backspace=indent,eol,start  " Backspace over anything
set autoindent                  " Autoindent
set smartindent                 " Smart indent
set copyindent                  " Copy previous indentation on autoindent
set showmatch                   " Show matching parentheses
set ignorecase                  " Ignore case when searching
set smartcase                   " Smart ignore case
set smarttab                    " Insert tabs on based on shiftwidth
set hlsearch                    " Highlight search terms
set incsearch                   " Show search matches as type
set nobackup                    " No vim backup
set noswapfile                  " No vim swapfiles
set history=1000                " Loooong history (of mistakes)
set undolevels=1000             " Time machine
set wildignore=*.pyc,*.class    " Ignore filetypes
set encoding=utf-8              " UTF-8 Encoding
set cursorline                  " Highlight current line
set laststatus=2                " Always show the statusline
set lazyredraw                  " Lazy redraw for speed
set ttyfast                     " TTY for speed
let mapleader = ","             " Remap leader to ,
syntax enable                   " Enable syntax highlighting
filetype plugin indent on       " Syntax rules for filetype

" Plugins
" -------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'roxma/vim-tmux-clipboard'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vitalk/vim-simple-todo', { 'for': 'todo' }
Plug 'evanleck/vim-svelte'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Coc
source $HOME/.config/nvim/coc.vim

" Colorscheme
set t_Co=256 " 256 color mode
set background=dark
let base16colorspace=256
colorscheme base16-default-dark
let g:airline_theme='base16'

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#fnamemod = ':t'

" Mappings
" -------------------------------

" Shortcut ; to :
map ; :

" jj to esc (Prepare for 2016+ MBP? Thanks Apple)
imap jj <Esc>

" Search
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <silent> <leader>h :set hlsearch!<CR>

" Windowpanes
set splitbelow
set splitright
nnoremap <leader>w <C-w>
nnoremap <silent> <leader>wm :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>wl :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tabs
nnoremap <leader>tn :tab split<CR>
nnoremap <S-j> :tabp<CR>
nnoremap <S-k> :tabn<CR>
nnoremap <S-h> :tabmove -1<CR>
nnoremap <S-l> :tabmove +1<CR>

" Copy and Paste from Clipboard
set clipboard+=unnamedplus
nnoremap <leader>p "+p
nnoremap <leader>y "+y

" NERDtree
nnoremap <Leader>nt :NERDTreeToggle<cr>

" FZF FuzzyFinder
nnoremap <C-p> :FZF<CR>
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

" Ack
nmap <leader>fa :Ack<space>
let g:ackprg = 'ag --nogroup --nocolor --column'

" Emmet
let g:user_emmet_leader_key = '<c-e>'

" Fugitive
nmap <leader>ga :Git add .<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gr :Git rebase -i 
nmap <leader>gp :Git push<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Git log<CR>
nmap <leader>gt :Git tree<CR>

" TSX
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
