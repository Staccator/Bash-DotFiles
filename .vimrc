" Default commands
set number
set nowrap
set cul
set hlsearch
set incsearch

" Tab stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Use very magic and case insensitive search patterns
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
nnoremap } /\v^\s*$<cr>:nohl<cr>
nnoremap { ?\v^\s*$<cr>:nohl<cr>
vmap y ygv<esc>

" Rider helpers
nnoremap mw dawbhPw
inoremap ; <end>;
nnoremap ms 2jS
nnoremap ma 2jA

" Indenting stuff. Remember about 'set shiftwidth'
vnoremap > >gv
vnoremap < <gv
nnoremap <Tab> >> 
nnoremap <S-Tab> << 
inoremap <S-Tab> <C-D>
vmap <Tab> >
vmap <S-Tab> <

" Fancy mappings
imap <c-f> <ESC>@ti
nmap ,, :noh<CR>
nnoremap <space> @q
" Commands
command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a
nnoremap <silent> <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>

"Registers
let @r='%s/\v\c(public|private).*\(.*\)$\n.*\{/\=submatch(0) . "\n         Tizen.Log.Verbose(\"tag\",\"" . substitute(submatch(0),''\v\n.*\{'','''',''g'') . "\");"'
"Mein Commanden
command! Logs %s/\v\c(public|private|protected).*\(.*\)$\n.*\{/\=submatch(0) . "\n         Tizen.Log.Verbose(\"tag\",\"" . substitute(submatch(0),'\v\n.*\{','','g') . "\");"
command! Inba %s/a/x/g

" Very useful functions
nnoremap <c-q> :x<cr>
set nocompatible
set hidden
syntax on
filetype indent plugin on
set wildmenu
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set mouse=a
set visualbell
set t_vb=
set cmdheight=2
map D dd
