" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set showmatch
set nomodeline

" autosave without my macro
set autowrite


" remove annoying - Thanks for flying VIM
set titlestring=
set titleold=

" disable intro screen
set shm=atI

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set ruler

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=2                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set encoding=utf-8

nnoremap <tab> %
vnoremap <tab> %

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set list
set listchars=tab:▸\ ,eol:¬

let mapleader = ","
let g:mapleader = ","

" faster window switch
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <F5> :BufExplorer<CR>
map <leader>e :BufExplorer<CR>

let g:bufExplorerDefaultHelp=0

" never really need to go to 0
map 0 ^


if has("gui_running")
  set transparency=0

  set guifont=Monaco:h12

  " lets check that one out
  set guifont=Meslo\ LG\ S:h13
  colorscheme vividchalk

  " my 30" setup, doesnt work so well on macbook :P
  " winpos 0 1580
  " winsize 200 90
  set guioptions-=T
  set fuoptions=maxvert,maxhorz

  " show relative numbers, might make me crazy, looks weird for sure
  set relativenumber
  set cursorline
  set ttyfast

  set undofile                " keep a persistent backup file
  set undodir=~/.vim/tmp,~/tmp,/tmp

else

  set number
end

    
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" key shortcuts
nnoremap ; :

" make / regexps a little more magic
nnoremap / /\v
vnoremap / /\v

" strip all trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

nnoremap <leader>a :Ack 

" yank till end of line Y
nmap Y y$

nmap <leader>p :YRShow<CR>

" quickfix
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

map <leader>b :NERDTreeFromBookmark<Space>
nnoremap <silent> <leader>f :NERDTreeFind<CR>

" leave insert mode without hitting ESC
inoremap jj <esc>


vmap < <gv
vmap > >gv

nmap <F6> :NERDTree<CR>
nmap <leader>r :NERDTree<CR>

let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
let NERDTreeWinSize = 40
let NERDTreeMinimalUI = 1

let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

let g:rubytest_cmd_spec = "rspec -f documentation --drb %p"
let g:rubytest_cmd_example = "rspec -f documentation --drb %p -e '%c'"
