"	                Comandos Importantes:
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
"zt			                  redraw, current line at top of window
"zz                           redraw, current line at center of window
"zb                           redraw, current line at botton of window
"*			                  search forward the word under the cursor
"£			                  search backward the word under the cursor
"gf			                  jumps to the file under the cursor
"zf			                  create fold
"H, M and L		              highest, midle and lowest line in the window
"~			                  Turn the letter under the cursor upper case
"<C-r>*                       Paste the clipboard register
":echo $HOME				  Show vimrc location

set showcmd
set smartcase
set autoindent
set cindent shiftwidth=4
set tabstop=4
set smartindent

"Plugin manager
"execute pathogen#infect()

syntax on
filetype plugin indent on

"Better copy paste
set pastetoggle=<f2>
" For Windows
" 	set clipboard=unnamedplus
" " For Linux
"  	set clipboard=unnamedplus

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
"map <S-E> :w<CR>:!erlc % & erl<CR>
"map <S-R> :w<CR>:!erlc %<CR>
map <S-E> :w<CR>:!scp % jpd21@raptor.kent.ac.uk:/home/cst/jpd21/public_html<CR>

" Show numbers in the left side (to use set relativenumber too)
set relativenumber
set number "the line number is showed insted of zero in version 7.4

" shortcut to push the lines down
map <leader>o i<CR><Esc>kA <Esc>
imap <leader>o <CR><Esc>kA

" shortcut to adjust beginnings of functions just putting {} after the )
imap {} {<CR>}<Esc>ko

" Allow horizontal scrolling
set nowrap

" case insensitive with lower case and case sensitive with some letter in
" upper case
set smartcase
set ic

" Highlighted search (:noh to unhighlight)
set hlsearch

" remap add and subtract number by 1 to - and +
noremap + <C-a>h 
noremap - <C-x>h 

" To use CTRL+A and CTRL+D to cange tabs
map <C-A> gT
map <C-D> gt
imap <C-A> <esc>gTi
imap <C-D> <esc>gti

" map space to create/open/close fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

" set fold method to marker (i.e. uses marker like //{{{)
set foldmethod=marker
"}}}

" Fold html tag
nnoremap <leader>ft Vatzf

" map CTRL-SPACE to open the wildmenu
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

if has('gui_running')
    " GUI colors
    colorscheme custom_(based_on_jellybeans)
else
    " Non-GUI (terminal) colors
    colorscheme custom_(based_on_jellybeans)
endif

" Open vimrc in a split view
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" reload vimrc without restarting
nnoremap <leader>er :so $MYVIMRC<cr>:noh<cr>

" To start to write after a end of function
inoremap <leader>u <Esc>/[)}\]>]<CR>:noh<CR>a
nnoremap <leader>u /[)}\]>]<cr>:noh<cr>a

"set up windows
set guifont=Inconsolata:h12
set lines=40 columns=180
set cursorline

"Tagbar plugin set up
let g:tagbar_ctags_bin = 'Z:\ctags58\ctags.exe'
set updatetime=500

"shortcuts for NerdTree and Tagbar
nmap <leader>8 :TagbarToggle<CR>
nmap <leader>3 :NERDTreeToggle<CR>

"creating html tags
imap \ct <ESC>^ywi<<ESC>A></<ESC>pa><ESC>F<i
imap \cT <ESC>^ywi<<ESC>A></<ESC>pa><ESC>F<i<CR><ESC>ko<C-t>

"Copy and paste based on the common register with the system
nnoremap \v "*p
nnoremap \c "*y

function! MyFoldText()
    let indent_level = indent(v:foldstart)
    let indent = repeat(' ',indent_level - 1)
	let line = substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
	let foldtextstart = strpart('+' . indent . line, 0, (winwidth(0)*3)/4)
	let lines_count = v:foldend - v:foldstart + 1
	let lines_count_text = '[ ' . printf("%10s", lines_count . ' lines') . ' ]'
	let foldtextlength = strlen(substitute(foldtextstart . lines_count_text, '.', 'x', 'g')) + &foldcolumn
	let foldchar = matchstr(&fillchars, 'fold:\zs.')
	return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength-indent_level) . lines_count_text
endfunction

set foldtext=MyFoldText()

"Show the syntax group of an element, useful to change colorschemes."{{{
" adds to statusline
set laststatus=2
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}

" a little more informative version of the above
nmap <Leader>sI :call <SID>SynStack()<CR>

function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc"}}}
