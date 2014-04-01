"	Comandos Importantes:
"u                            undo
"o                            pula linha e vai pro modo inserção
":set ic                      faz com que a busa ignore maiúsculas e minúsculas
"CTRL-R                       redo
"b                            o mesmo que w, só que para trás
"CTRL-G                       mostra o nome do arquivo
":set autoindent              identa automaticamente
":set cindent shifitwidth=4   identa automaticamente como arquivos c e java com identação tamanho 4
":filetype indent on          identa automaticamente arquivos conhecidos
"CTRL-V (com shift) ou CTRL-q entra no modo Visual Block, que permite inserir em várias linhas ao selecioná-las e apertar I e depois de inserir o testo apertar <ESC> 
"CTRL-T                       indenta no modo inserção
"CTRL-D                       retira uma indentação no modo inserção
"CTRL-W                       deleta uma palavra no modo inserção
"gU{movimento}                torna maiuscula
"gu{movimento}                torna minuscula
"<C-o>                        ultima visualizacao
"<C-i>                        contrario de <C-o>
"<c-z>                        puts the vim job in stop mode
"fg                           get back from the stop mode
"<c-w>s                       split horizontal window
"<c-w>v                       split vertical window
":put a                       paste the macro A into a document
":reg a                       show the macro A
""ay$                         copy the line to the macro A
"t                            as f but stop before the caracter
":mksession session.vim       Salva sessao atual
"vim -S ~/seesion.vim         inicia vim com seesion
"CTRl-F                       Page down
"CTRL-B                       Page up
"zt			      redraw, current line at top of window
"zz                           redraw, current line at center of window
"zb                           redraw, current line at botton of window
"*			      search forward the word under the cursor
"£			      search backward the word under the cursor
"gf			      jumps to the file under the cursor

set showcmd
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

" To use shift-e to run codekj
"map <S-E> :w<CR>:!/usr/bin/python % <CR>
"map <S-E> :w<CR>:!javac %<CR>:!java TestReceiver<CR>
map <S-E> :w<CR>:!erlc % & erl<CR>
map <S-R> :w<CR>:!erlc %<CR>

" Show numbers in the left side (to use set relativenumber too)
set relativenumber
set number "the line number is showed insted of zero in version 7.4

" shortcut to push the lines down
map <C-S-O> i<CR><Esc>kA <Esc>
imap <C-S-O> <CR><Esc>k

" shortcut to adjust beginnings of functions just putting {} after the )
imap {} {<CR>}<Esc>ko

" Allow horizontal scrolling
set nowrap

" case insensitive with lower case and case sensitive with some letter in
" upper case
set smartcase
set ic

" To use CTRL+A and CTRL+D to cange tabs
map <C-A> gT
map <C-D> gt
imap <C-A> <esc>gTi
imap <C-D> <esc>gti

" map space to create/open/close fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

" map CTRL-SPACE to open the wildmenu
inoremap <C-@> <C-x><C-o>

if has('gui_running')
    " GUI colors
    colorscheme custom
else
    " Non-GUI (terminal) colors
    colorscheme relaxedgreen
endif
