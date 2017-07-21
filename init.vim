" Vim settings
" -------------------------------
set nocompatible                " No backwards compatibility
set number                      " Line numbers
set scrolloff=10                " Show 10 lines past EOF
set ruler                       " Show line and column numbers
set hidden                      " Hide buffers instead of quitting
set nowrap                      " Don't wrap lines
set expandtab                   " Tab produces spaces
set tabstop=2                   " 2 spaces per tab
set softtabstop=2               " 2 spaces per softtab
set shiftwidth=2                " 2 spaces for reindent
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Deoplete.
let g:deoplete#enable_at_startup = 1
function! s:neosnippet_complete()
  if pumvisible()
    return "\<c-n>"
  else
    if neosnippet#expandable_or_jumpable() 
      return "\<Plug>(neosnippet_expand_or_jump)"
    endif
    return "\<tab>"
  endif
endfunction
imap <expr><TAB> <SID>neosnippet_complete()

" Colorscheme
set t_Co=256 " 256 color mode
set background=dark
let base16colorspace=256
colorscheme base16-default-dark
let g:airline_theme='base16'

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '␤'

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

" Copy and Paste from Clipboard
map <leader>p "+p
map <leader>y "+y

" NERDtree
nnoremap <Leader>nt :NERDTreeToggle<cr>

" FZF FuzzyFinder
nnoremap <C-p> :FZF<CR>

" Emmet
let g:user_emmet_leader_key = '<c-e>'

" Ack
nmap <leader>fa :Ack<space>
