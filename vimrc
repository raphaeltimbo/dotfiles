"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

imap jj <Esc>
xnoremap p pgvy
nnoremap - $
vnoremap - $
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
nmap <F6> :NERDTreeToggle<CR>

" split config
" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" copy and paste to/from clipboard -> "+ is used to acess the register
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" color scheme
syntax enable
set background=dark
colorscheme solarized
let g:lightline = {'colorscheme': 'solarized'}

" text format
filetype plugin indent on " enable file type detection
set autoindent

" jedi
let g:jedi#use_splits_not_buffers = "bottom"

" Enable folding with the spacebar
nnoremap <space> za

highlight BadWhitespace ctermbg=DarkCyan guibg=DarkCyan
" flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"---------------------
" Basic editing config
"---------------------
set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " line break
set ruler " show current position in file
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set showcmd " show current command
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

