"Comandos Importantes:
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
  "ge
  "o mesmo que e, só que pra trás
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
  "
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
  "Use noautocmd to be faster, like :noautocmd vimgrep...
  "
  "Example of good search cmd
  "noautocmd vimgrep //gj `git ls-files`
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
  "
  "Pra configurar o copy paste no tmux:
  "- Primeiro copiar as seguintes 2 linhas para ~/.tmux.conf
  "# Automatically copy tmux selection to X clipboard
  "bind-key -n C-v run "tmux set-buffer \"$(xclip -o -sel clipboard)\"; tmux paste-buffer"
  "- Então instalar xclip com
  "sudo apt-get install xclip
  "
  "Open a new vim split from an existing buffer
  ":ls<cr>:vertical sb<space>
  "
  "Split lines by pattern
  ":'<,'>s/<pattern>/\r/g
  ":'<,'>s/\(#[a-zA-Z\.]*{\)/\r\r\1/g
  ":'<,'>s/{/\r{/g
  ":'<,'>s/,/\r/g
  ":'<,'>s/\\n\\t/\r  /g
  "
  "
  "Pattern that is not 'A'
  "[^A]
  "
  "Like * but without \< and \>
  "g*
  "
  " Convert each name_like_this to nameLikeThis in current line. https://vim.fandom.com/wiki/Converting_variables_to_or_from_camel_case
  ":s#_\(\l\)#\u\1#g
  "
  "ge
  "Like b, but set the cursor in the end of the word
  "
  "v{n}>
  "To indent the current line n times to the right
  "
  "set foldlevel=20
  "To start with folds all opened
  "
  "zr foldlevel++
  "zm foldlevel--
  "zR Open all folds
  "zM Close all folds
  "
  "To diff files open them in split (e.g. with `vsplit`) and
  ":diffthis
  "
  "- Easy Align
  "- Align around space
  "vGga<space>
  "- Align around last space
  "vGga-<space>
  "- Interative mode and regex
  "vGga^p^x
  "
  "Fireplace eval the whole file
  "%Eval
  "
  "Fireplace command-line-window
  "cqq
  "cqc
  "
  "break line based on textwidth (wrap)
  "gq<move>
  "
  "Count occurrences
  ":%s/pattern//gn
  "
  "regex pattern or another
  "/<pattern1>\|<pattern2>
  "
  "Delete without yanking
  ""x<delete-move>
  "
  "Spellcheck (i.e. natural language dictionary checker). Some related
  "mappings in https://vimtricks.com/p/vim-spell-check/
  ":set spell!
  "
  "Add the word under the cursor to the dictionary
  "zg
  "
  "Insert foldlevel as first char in line
  ":%s/^/\=foldlevel(line('.'))."\t"/
  "
  "Move window (the second key is releasing CTRL and holding SHIFT)
  "CTRL-W [H | J | K | L]
  "
  "Dunst show history notication
  "ctrl+space
  "
  "Dunst close all notifications
  "ctrl+Shift+space
  "
  "Dunst (through i3) go to window
  "mod+ctrl+Return
  "
  "Fireplace load whole file
  "%Eval
  "
  "Evaluate the selection in Clojure, but do not print
  ":silent '<,'>Eval
  "
  "Open a list of commits that touched the current file, when the commit line
  "is clicked the file in that version is loaded. This is a vim fugitive
  "command
  ":0Glog -- %

" Open a buffer in vertical split
noremap <leader>vsb :ls<cr>:vertical sb<space>

set showcmd
set smartcase
set autoindent
set cindent shiftwidth=2
set tabstop=2
set smartindent
set expandtab

"Plugin manager"
execute pathogen#infect()

syntax on
filetype plugin indent on
"Better copy paste
set pastetoggle=<f2>
set clipboard=unnamedplus

let mapleader=","

"torna a sequencia "jk" o novo "esc""
  imap jk <esc>
  " vmap jk <esc>

" bind Ctrl-<movement> to move between wndows"
  noremap <c-j> <c-w>j
  noremap <c-k> <c-w>k
  noremap <c-l> <c-w>l
  noremap <c-h> <c-w>h

" don't automatically wrap text when typing"
set fo-=t

" Manage backups
  " set nobackup
  " set nowritebackup
  " set noswapfile
  set backup "Turn on backup option
  set writebackup "Make backup before overwriting the current buffer
  set backupcopy=yes "Overwrite the original backup file, also prevents from saving twice. Good for hot reloading
  au BufWritePre * let &bex = '@' . strftime("%F.%H:%M") "Meaningful backup name, ex: filename@2015-04-05.14:59
  "Change the location of backup files
  set backupdir=.backup/,~/.backup/,/tmp/vim-backups//
  set directory=.swp/,~/.swp/,/tmp//
  set undodir=.undo/,~/.undo/,/tmp//

" turn mouse on (good to resize wondows)"
set mouse=a

" Show numbers in the left side (to use set relativenumber too)
  set number "the line number is showed insted of zero in version 7.4
  set relativenumber"
  " Swap this config with ,rn
  map <leader>rn :set relativenumber!<CR> 

" shortcut to push the lines down
  map <leader>o i<CR><Esc>kA<Esc>
  imap <leader>o <CR><Esc>kA

" shortcut to adjust beginnings of functions just putting {} after the )
" imap {} {<CR>}<Esc>kA

" Allow horizontal scrolling
set nowrap

" case insensitive with lower case and case sensitive with some letter in
" upper case
  set smartcase
  set ic

" Highlighted and incremental search (:noh to unhighlight)
  set hlsearch
  set incsearch

" remap add and subtract number by 1 to - and +
  noremap + <C-a>h
  noremap - <C-x>h

" To use CTRL+A and CTRL+W to cange tabs
  noremap <S-q> gT
  noremap <C-a> gt
  " noremap <C-h> gT
  " noremap <C-l> gt
" imap <C-A> <esc>gTi
" imap <C-W> <esc>gti

" Toggle terminal
map <C-D> :sh<CR>

" map space to create/open/close fold
  nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
  vnoremap <Space> zf
  " Fold html tag
  nnoremap <leader>ft Vatzf

" set fold method
set foldmethod=expr

" Fold function to replace what's written
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

" map CTRL-SPACE to open the wildmenu
inoremap <C-@> <C-x><C-o>

"Change colors
colorscheme custom_(based_on_jellybeans)

" .vimrc management
  " Open vimrc in a split view
  nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
  " reload vimrc without restarting{{{
  nnoremap <leader>er :so $MYVIMRC<cr>:noh<cr>

" To start to write after a end of function
  inoremap <leader>u <Esc>/[)}\]>]<CR>:noh<CR>a
  nnoremap <leader>u /[)}\]>]<cr>:noh<cr>a

"shortcut for NerdTree"
  nmap <leader>3 :NERDTreeToggle<CR>
  let NERDTreeCustomOpenArgs = {'file':{'reuse':'all', 'where': 't', 'keepopen': 1}}

nmap <leader>8 :Tagbar<CR>

"creating html tags"
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

"TO always work with utf-8"
  set encoding=utf-8
  set fileencoding=utf-8

"Fix syntax"
  noremap <Leader><Leader> <Esc>:syntax sync fromstart<CR>
  inoremap <Leader><Leader> <C-o>:syntax sync fromstart<CR>

"Mostra caracteres invisíveis não desejáveis."
  " set listchars=tab:>-,extends:#,nbsp:_,trail:_
  set listchars=tab:>-,extends:#,nbsp:_ "Better not to see trailing spaces otherwise I will want to fix everything
  set list

"set up windows sizes and fonts"
  set guifont=Inconsolata:h36
  set lines=50 columns=122
  set cursorline

"Running command in background
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
  "
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
  "
  " So we can use :BackgroundCommand to call our function.
  command! -nargs=+ -complete=shellcmd RunBackgroundCommand call RunBackgroundCommand(<q-args>)

" Return the character currently under the cursor.
  function! GetCharUnderCursor()
    return matchstr(getline('.'), '\%' . col('.') . 'c.')
  endfunction"

set tags=tags

map <leader>cc :TComment<CR>

" Running tests
  map c<leader> :w<CR>:RunTests<CR>
  " map c<leader> :Eval (cljs.test/run-tests)<CR>
  map c.<leader> :w<CR>:.RunTests<CR>

" set pastetoggle=<leader>p
map <leader>p "0p

" Make ctrl-p ignore files and dirs of .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Close tabs to the right
noremap <leader>$$ :tabnext<CR>:.,$tabdo :tabclose<CR>

" shortcut for vimgrep
  map <leader>s :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj `git ls-files`" <Bar> cw<CR>
  map <leader>gs :execute "noautocmd vimgrep /" . expand("<cword>") . "/gj `git ls-files`" <Bar> cw<CR>

" shortcut for toggling paredit
  " map <leader>cp :call PareditToggle()<CR>
  " imap <leader>cp <ESC>:call PareditToggle()<CR>li
  "
  " Toggle parinfer
  map <leader>cp :ToggleParinfer<CR>
  " Evaluate parinfer
  map <leader>m :ToggleParinfer<CR>a <BS>jk:ToggleParinfer<CR>

"Pra desligar automaticamente com script em ~/shutdown-test
"autocmd BufWritePost * silent! !touch ~/now

set nocursorline
set cursorcolumn

" Busca em todo o projeto
command -nargs=1 Sch noautocmd vimgrep /<args>/gj `git ls-files` | cw

"Use clj-kondo as Clojure linter
let g:ale_linters = {'clojure': ['clj-kondo']}

function! Myfn2()
  execute "normal! el "
  let shortColumn = col('.')
  execute "normal! i" . repeat(" ", longColumn - shortColumn) . "\<Esc>"
endfunction

function! Myfn(scope)
  let longColumn = col('.')
  execute "normal! j$F "
  let shortColumn = col('.')
  execute "normal! i" . repeat(" ", longColumn - shortColumn) . "\<Esc>"
  echom nr2char(longColumn - shortColumn)
endfunction
command -nargs=1 Callmyfn noautocmd call Myfn("<args>")
nnoremap <silent> <leader>ci :exe "Callmyfn " nr2char(getchar())<cr>

"EasyAlign plugin setup (See https://github.com/junegunn/vim-easy-align)
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

" Show status line in all windows
set laststatus=2

" Open buffer of file under the cursor
map <C-W>b :let mycurf=expand("<cfile>")<CR>:execute("tab drop ".mycurf)<CR>
        
" let g:clj_fmt_autosave = 0
" let g:clj_fmt_config = '{:indentation? true, :remove-surrounding-whitespace? true, :remove-trailing-whitespace? true, :remove-consecutive-blank-lines? false, :insert-missing-whitespace? true, :align-associative? true, :indents {#"^\w" [[:inner 0]], #".*" [[:inner 0]]}}'

" Clojure
  autocmd FileType clojure setlocal lispwords+=->>,->,some->,some->>,ex-info,new,request,assoc,not-join,deep-merge-with,join " Use `set lispwords+=<word> change it imediately
  map <leader>rl :CljEval (do (require '[clojure.tools.namespace.repl :refer (refresh)]) (refresh))<CR>
  map <leader>rr :CljEval (do (require '[dev/dev]) (dev/reset))<CR>
  map <leader>rp :Eval (require '[clojure.pprint :refer [pprint]])<CR>
  map <leader>pr :Eval (pprint *1)<CR>
  map <leader>psr :Eval (cljs.pprint/pprint *1)<CR>
  " map <leader>rr :CljEval (do (require 'dev :reload-all) (dev/reset))<CR>
  "
  " Put an "a" mark with `ma` to run this code when hiting ,a
  map <leader>a mb`acpp`b
  map <leader>c1 mb`1cpp`b
  map <leader>c2 mb`2cpp`b
  map <leader>c3 mb`3cpp`b
  map <leader>c4 mb`4cpp`b
  map <leader>c5 mb`5cpp`b
  map <leader>c6 mb`6cpp`b
  map <leader>c7 mb`7cpp`b
  map <leader>c8 mb`8cpp`b
  map <leader>c9 mb`9cpp`b
  map <leader>c0 mb`0cpp`b
  "
  " Define the last result with the name under the cursor
  map <leader>ce ye:Eval (def <C-r>+ *1)<CR>
  " With the var name and body selected, uses ,define it in global scope
  vnoremap <leader>cpp y:Eval (def <C-r>+)<CR>
  "
  " A much better clojure formatter
  map <leader>zp !a(zprint '{:width 100, :style :justified :map {:comma? false}}'<CR>
  map <leader>z1 !a(zprint '{:width 60, :style :justified :map {:comma? false :nl-separator? true}}'<CR>
  "
  " From css to clj (written this way with the repeat plugin allows me to use
  " "." to repeat
  nmap <Plug>CssToClj i:<ESC>lf:xli"<ESC>f;r"F:j
  \:call repeat#set("\<Plug>CssToClj")<CR>
  nmap <leader>cs <Plug>CssToClj

  "Put the result of last command
  map <leader>! :Eval! *1<CR>

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" reset parinfer map ctrl-i, instead of indenting it goes back to default behavior
" nunmap <buffer> <c-i>
" Actually this doesn't work. What does work is to remove/comment the mappings
" of Tab in vim-parinfer/parinfer.vim

" goto tag with motion
  nmap <silent> <leader>t :set opfunc=TagWithMotion<CR>g@
  vmap <silent> <leader>t :<C-U>call TagWithMotion(visualmode(), 1)<CR>
  function! TagWithMotion(type, ...)
    let sel_save = &selection
    let &selection = "inclusive"
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
      silent exe "normal! gvy"
    elseif a:type == 'line'
      silent exe "normal! '[V']y"
    else
      silent exe "normal! `[v`]y"
    endif

    execute "tag " . @@

    let &selection = sel_save
    let @@ = reg_save
  endfunction

" Include src/ and test/ in path so <c-w>gf can go to definition
  set path+=src/
  set path+=test/

let g:tagbar_type_swift = {
  \ 'ctagstype': 'swift',
  \ 'kinds' : [
    \ 'n:Enums',
    \ 't:Typealiases',
    \ 'p:Protocols',
    \ 's:Structs',
    \ 'c:Classes',
    \ 'f:Functions',
    \ 'v:Variables',
    \ 'e:Extensions'
  \ ],
  \ 'sort' : 0
\ }

" Open definition in a new tab
nmap <leader>] <C-W>]<C-W>T

" Fold by the pattern ';; ----' (Ainda precisa usar uma macro pra rodar
" repetidamente e excluir o último marcador que acaba englobando tudo, mas tá
" bom)
nmap <leader>fp v/;; ---- \\|\%$
kkzfn

" Break line without losing alignment
nmap <leader><leader>o hmbv0y`bi
jkv0Pv0r kA 

" Sort by name independently if it's a folder or file.
let NERDTreeSortOrder=[]

" Improve folding, as a complement of 'indent', to fold patterns like ';; ---- Name ----'
" set foldexpr=getline(v:lnum)=~'^;;\\s--'?'>1':getline(v:lnum)=~'^;;'?'=':indent(v:lnum)+3

" This is a good test function to be used with the command 
  "Insert foldlevel as first char in line
  ":%s/^/\=foldlevel(line('.'))."\t"/
" so I can set the fold method to indent, insert foldlevel as
" first char and set this test function to manually change the
" numbers of fold level and check the behavior.
function! DebugFoldExpr()
  let line = getline(v:lnum)
  let number = line[0] . line[1]
  return number
endfunction

" Improve folding, as a complement of 'indent', to fold patterns like ';; -- Name --'
" with the number of hifens as a indication of fold level.
function! CustomFoldExpr()
  let line = getline(v:lnum)

  " Match lines that start with ;; and then hyphens
  if line =~ '^;;\s*-\{2,}'
    " Extract just the hyphen group
    let hyphen_part = matchstr(line, '^;;\s*\zs-\+')
    " Fold level is the number of hyphens
    return strlen(hyphen_part)
  endif

  " Fallback to indent-based folding with an offset
  return indent(v:lnum)/&shiftwidth + 5
endfunction

set foldmethod=expr
set foldexpr=CustomFoldExpr()
