syntax on
set number
set hlsearch
set wildmenu
set hidden
set mouse=a
set tabstop=4

let mapleader = ","

"Learning mode!
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

"Set locations for swap files
set backupdir=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.
set directory=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.

"Configure whitespace display
silent! set listchars=tab:>-,trail:·,eol:$
nnoremap <silent> <Leader>w :set nolist!<CR>

"Enable better matching with %
runtime macros/matchit.vim

"Toggle wrap
nnoremap <F3> :set nowrap!<CR>

"Clear search highlighting
nnoremap <silent> <Leader>s :let @/ = ""<CR>

"Toggle line numbers with <F2> for easy code copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Tab reordering
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Execute run command in a makefile
map <Leader>e :update<CR>:!clear<CR>:!% <CR>
map <silent> <Leader>fx :%! tidy -utf8 -xml -w 5 -i -q -asxml \| sed "s/^\(  \)*\w/  \0/"<CR>
map <silent> <Leader>fj :%! python -c "import sys; import json as j; print(j.dumps(j.loads(sys.stdin.read()), indent=1))"<CR>
command! Reload :source ~/.vimrc

set noignorecase

colorscheme desert
