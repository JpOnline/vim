set smartcase
set autoindent
set cindent shiftwidth=4
set smartindent
filetype plugin indent on

"Better copy paste
set pastetoggle=<f2>
set clipboard=unnamedplus

"torna a sequencia "jk" o novo "esc"
imap jk <esc>
vmap jk <esc>

" bind Ctrl-<movement> to move between wndows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" don't automatically wrap text when typing
set fo-=t

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" turn mouse on (good to resize wondows)
set mouse=a

" To debug android remotely
let $AP_PORT=56368
let $AP_HOST="192.168.0.105"

" To use shift-e to run python2.6
map <S-E> :w<CR>:!/usr/bin/python % <CR>

" Show numbers in the left side (to use set relativenumber too)
set relativenumber

" shortcut to push the lines down
map <C-S-O> i<CR><Esc>kA <Esc>
imap <C-S-O> <CR><Esc>k
