" VIM - mappings

" Easy short navigation in insert mode
inoremap <A-h> <Left>
inoremap <A-l> <Right>

" Easy windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" When mapping <C-j> has no effect
nmap <cr> <C-j>

" When mapping <C-h> has no effect
nmap <BS> <C-h>

" Redraw
nnoremap <C-r> <C-l>

" Save buffer
nnoremap <M-Space> :w<cr>
inoremap <M-Space> <Esc>:w<cr>
vnoremap <M-Space> <Esc>:w<cr>
nnoremap <M-s> :w<cr>
inoremap <M-s> <Esc>:w<cr>
vnoremap <M-s> <Esc>:w<cr>

" toggle wrap
nnoremap <M-w> :set wrap! wrap?<cr>

" toggle relativenumber
nnoremap <M-r>	:set relativenumber! relativenumber?<CR>


" Start interactive EasyAlign in visual mode (e.g. vipgea)
xmap gea <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. geaip)
nmap gea <Plug>(EasyAlign)

" Discard last search highlight
nnoremap <silent> § :noh \| echo "Search cleared"<cr>

nnoremap <silent> <C-Space> :<C-u>CtrlSpace<cr>

" Toggle indent guides
nnoremap <M-g> :<C-u>IndentGuidesToggle<cr>

"-- Navigation
"------------------------------------------------------------------

" Goto tabs
nnoremap <M-J> gT
nnoremap <M-K> gt
inoremap <M-J> <esc>gT
inoremap <M-K> <esc>gt


" Move tabs
nnoremap <M-H> :tabmove -1<cr>
nnoremap <M-L> :tabmove +1<cr>
inoremap <M-H> <esc>:tabmove -1<cr>
inoremap <M-L> <esc>:tabmove +1<cr>


" Visual - Move a selection of text
vnoremap <Left> <gv
vnoremap <Right> >gv
vnoremap <Up> :m '<-2<cr>gv
vnoremap <Down> :m '>+1<cr>gv


" Insert empty lines up or down
inoremap <M-o> <C-o>o
inoremap <M-O> <C-o>O
nnoremap <M-o> o<esc>
nnoremap <M-O> O<esc>


" Shortcut
nnoremap Q :q<cr>

" THE missing one (and still not working :/)
"nnoremap ci( f(ci)

" Insert a TAB (thanks Epitech for that habit)
inoremap <M-i> <C-v><Tab>

" Disable <M-i> in normal mode, it hangs the terminal
nnoremap <M-i> <nop>


" Indent line
nnoremap <Tab> mi==`i
inoremap <Tab> <Esc>mi==`il

" note that '<,'> is automatically inserted on ':'
vnoremap <Tab> :normal! ==<cr>

" Format the file
nnoremap <C-f> gg=G``

" Toggle PASTE mode
nnoremap <M-p> :set paste! paste?<CR>

" Copy/Paste with system clipboard
vnoremap <silent> <M-c> :'<,'>w !xclip -in -selection clipboard<cr>
nnoremap <silent> <M-v> :r !xclip -out -selection clipboard<cr>

" Save the file as sudo
cnoremap w!! w !sudo tee % >/dev/null


" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first make a new undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" logical undo
nnoremap U <C-r>


" Taken from visual-at.vim from Practical Vim 2nd Edition
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @".nr2char(getchar())
endfunction


" Toggle Gundo tree
nnoremap <F5> :GundoToggle<cr>

" Show highlight infos
nmap <F2> :echom "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" <CR>
