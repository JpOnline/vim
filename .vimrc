"Comandos Importantes:{{{
"u
"undo
"
"CTRL-R
"redo
"
"o
"pula linha e vai pro modo inserção
"
":set ic
"faz com que a busa ignore maiúsculas e minúsculas
"
"b
"o mesmo que w, só que para trás
"
"CTRL-G
"mostra o nome do arquivo e algumas outras e outras informações
"
":set autoindent
"identa automaticamente
"
":set cindent shifitwidth=4
"identa automaticamente como arquivos c e java com identação tamanho 4
"
":filetype indent on
"identa automaticamente arquivos conhecidos
"
"CTRL-V (com shift) ou CTRL-q
"entra no modo Visual Block, que permite inserir em várias linhas ao selecioná-las e apertar I e depois de inserir o testo apertar <ESC> 
"
"CTRL-T
"indenta no modo inserção
"
"CTRL-D
"retira uma indentação no modo inserção
"
"CTRL-W
"deleta uma palavra no modo inserção
"
"gU{movimento}
"torna maiuscula
"
"gu{movimento}
"torna minuscula
"
"<C-o>
"ultima visualizacao
"
"<C-i>
"contrario de <C-o>
"
"<c-z>
"puts the vim job in stop mode
"
"fg
"get back from the stop mode
"
"<c-w>s
"split horizontal window
"
"<c-w>v
"split vertical window
"
":put a
"paste the macro A into a document
"
":reg a
"show the macro A
"
""ay$
"copy the line to the macro A

"t
"as f but stop before the caracter
"
":mksession session.vim
"Salva sessao atual
"
"vim -S ~/seesion.vim
"inicia vim com seesion
"
"CTRl-F
"Page down
"
"CTRL-B
"Page up
"
"zt			
"redraw, current line at top of window
"
"zz
"redraw, current line at center of window
"
"zb
"redraw, current line at botton of window
"
"*
"search forward the word under the cursor
"
"£
"search backward the word under the cursor
"
"gf
"jumps to the file under the cursor
"
"zf
"create fold
"
"H, M and L
"highest, midle and lowest line in the window
"
"~
"Turn the letter under the cursor upper case
"
":vimgrep /<pattern>/gj **/*
"Search recursively through files in folder, then use cw to open result
"
"In shell, lists the possible fonts
"xlsfonts
"To be used with
":set guifont=
set guifont=10x20
"
":%s/{pattern}/{string}/gc
"Substitutes pattern for string, g is to replace in the whole line and c is to
"confirm in every replace.
"
"Ctrl-t
"indent in insert mode
"
"ctrl-d
"unindent in insert mode
"
"g+
"undo tree, move chronologically forward
"
"g-
"undo tree, move chronologically backward
"
":tab split
"Duplica tab
"
":<ctrl-f>
"Edita comando no normal mode (bom pra copy paste e manipulação de registros)
"
":tabm 0       move current tab to first
":tabm         move current tab to last
":tabm {i}     move current tab to position i+1
"{i}gt         go to tab in position i
"}}}

set showcmd
set smartcase
set autoindent
set cindent shiftwidth=2
set tabstop=2
set smartindent
set expandtab

"Plugin manager"{{{
execute pathogen#infect()
"}}}

syntax on
filetype plugin indent on
"Better copy paste
set pastetoggle=<f2>
set clipboard=unnamedplus

let mapleader=","

"torna a sequencia "jk" o novo "esc""{{{
imap jk <esc>
vmap jk <esc>
"}}}
" bind Ctrl-<movement> to move between wndows"{{{
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
"}}}
" don't automatically wrap text when typing"{{{
set fo-=t
"}}}
" Disable backup and swap files"{{{
" set nobackup
" set nowritebackup
" set noswapfile
"}}}
"Change the location of backup files
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
" turn mouse on (good to resize wondows)"{{{
set mouse=a
"}}}
" To use shift-e to run codekj (disabled)"{{{
noremap <S-E> :Eval<CR>
" noremap <S-E> :silent !polymer test > .vim/tmpExecutionOutput &<CR> :vsp .vim/tmpExecutionOutput<CR><c-w>r<c-w>h
"}}}
" Show numbers in the left side (to use set relativenumber too){{{
set number "the line number is showed insted of zero in version 7.4
set relativenumber"}}}
" shortcut to push the lines down{{{
map <leader>o i<CR><Esc>kA<Esc>
imap <leader>o <CR><Esc>kA"}}}
" shortcut to adjust beginnings of functions just putting {} after the ){{{
imap {} {<CR>}<Esc>kA
"}}}
" Allow horizontal scrolling{{{
set nowrap
"}}}
" case insensitive with lower case and case sensitive with some letter in{{{
" upper case
set smartcase
set ic
"}}}
" Highlighted search (:noh to unhighlight){{{
set hlsearch

" remap add and subtract number by 1 to - and +}}}
" remap add and subtract number by 1 to - and +"{{{
noremap + <C-a>h
noremap - <C-x>h
"}}}
" To use CTRL+A and CTRL+W to cange tabs{{{
noremap <C-A> gT
noremap <C-W> gt
imap <C-A> <esc>gTi
imap <C-W> <esc>gti
"}}}
" Toggle terminal{{{
map <C-D> :sh<CR>
" }}}
" map space to create/open/close fold{{{
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf
"}}}
" set fold method to marker (i.e. uses marker like //{{{)
set foldmethod=indent
" }}}
"{{{ Fold function to replace what's written
function! MyFoldText()
  let indent_level = indent(v:foldstart)
  let indent = repeat(' ',indent_level - 1)
  let line = substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let foldtextstart = strpart('+' . indent . line, 0, (winwidth(0)*3)/4)
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '[ ' . printf("%6s", lines_count . ' lines') . ' ]'
  let foldtextlength = strlen(substitute(foldtextstart . lines_count_text, '.', 'x', 'g')) + &foldcolumn
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength-indent_level-5) . lines_count_text
endfunction
set foldtext=MyFoldText()
"}}}
" Fold html tag{{{
nnoremap <leader>ft Vatzf
"}}}
" map CTRL-SPACE to open the wildmenu{{{
inoremap <C-@> <C-x><C-o>
"}}}
"Change colors{{{
colorscheme custom_(based_on_jellybeans)
"}}}
" Open vimrc in a split view{{{
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"}}}
" reload vimrc without restarting{{{
nnoremap <leader>er :so $MYVIMRC<cr>:noh<cr>
"}}}
" To start to write after a end of function{{{
inoremap <leader>u <Esc>/[)}\]>]<CR>:noh<CR>a
nnoremap <leader>u /[)}\]>]<cr>:noh<cr>a
"}}}
"shortcut for NerdTree"{{{
nmap <leader>3 :NERDTreeToggle<CR>
"}}}
"creating html tags"{{{
function! CreateHTMLTag()
  execute "normal! ^yWi<\<ESC>A></\<ESC>p"
  if GetCharUnderCursor() == ' '
    "Delete the character
    execute "normal! x"
  endif
  execute "normal! a>\<ESC>F<"
endfunction
imap <Leader>ct <ESC>:call CreateHTMLTag()<CR>i
imap <Leader>cT <ESC>:call CreateHTMLTag()<CR>i<CR><ESC>ko<C-t>
"}}}
"TO always work with utf-8"{{{
set encoding=utf-8
set fileencoding=utf-8
"}}}
"Fix syntax"{{{
noremap <Leader><Leader> <Esc>:syntax sync fromstart<CR>
inoremap <Leader><Leader> <C-o>:syntax sync fromstart<CR>
"}}}
"Correct identation according to previous line"{{{
noremap <Leader>i0 :normal kyypj^d$k^PlDjdd^<CR>
noremap <Leader>i1 kyypj^d$k^PlD>>jdd^
"}}}
"Mostra caracteres invisíveis não desejáveis."{{{
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list
"}}}
"
"creating polymer function"{{{
imap <Leader>pf : function(){//{{{<CR>},//}}}<ESC>k$
"}}}
"
"set up windows sizes and fonts"{{{
set guifont=Inconsolata:h36
set lines=40 columns=90
set cursorline
"}}}
"
"Running command in background {{{
" This callback will be executed when the entire command is completed
function! BackgroundCommandClose(channel)
  " execute 'vs '. g:backgroundCommandOutput
  " execute "normal! \<c-w>l\<CR>\<c-w>r"
  " Read the output from the command into the quickfix window
  execute "cfile! " . g:backgroundCommandOutput
  " Open the quickfix window
  copen
  " get back to working file.
  execute "normal! \<c-w>k"
  execute "normal! \<c-o>"
  unlet g:backgroundCommandOutput
endfunction

function! RunBackgroundCommand(command)
  " Make sure we're running VIM version 8 or higher.
  if v:version < 800
    echoerr 'RunBackgroundCommand requires VIM version 8 or higher'
    return
  endif

  if exists('g:backgroundCommandOutput')
    echo 'Already running task in background'
  else
    echo 'Running task in background'
    " Launch the job.
    " Notice that we're only capturing out, and not err here. This is because, for some reason, the callback
    " will not actually get hit if we write err out to the same file. Not sure if I'm doing this wrong or?
    let g:backgroundCommandOutput = tempname()
    call job_start(a:command, {'close_cb': 'BackgroundCommandClose', 'out_io': 'file', 'out_name': g:backgroundCommandOutput})
  endif
endfunction

" So we can use :BackgroundCommand to call our function.
command! -nargs=+ -complete=shellcmd RunBackgroundCommand call RunBackgroundCommand(<q-args>)
"}}}
"
" Return the character currently under the cursor.{{{
function! GetCharUnderCursor()
  return matchstr(getline('.'), '\%' . col('.') . 'c.')
endfunction"}}}

set tags=tags

map <leader>cc :TComment<CR>

map c<leader> :w<CR>:RunTests<CR>

" Prevents from saving twice. Good for hot reloading
set backupcopy=yes
