filetype plugin on

set background=dark
" colorscheme NeoSolarized
colorscheme gruvbox

set spellfile=~/.vim/spell/en.utf-8.add

" fzf setup
set rtp+=~/.fzf

set splitbelow
set splitright
set number
set relativenumber
set ruler
set hidden
set lbr
syntax on
set autoread

set tabstop=4
set shiftwidth=4
set expandtab

let g:tex_flavor = "latex"

autocmd FileType tex setlocal commentstring=%%s
autocmd FileType haskell setlocal commentstring=--%s

" hi SpellBad cterm=underline ctermfg=5
" hi SpellCap cterm=underline ctermfg=5
" hi SpellRare cterm=underline ctermfg=5
" hi SpellLocal cterm=underline ctermfg=5

" Better searching
set ignorecase
set smartcase
set incsearch
set hlsearch

command! PackUpdate call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call minpac#clean()
command! PackStatus call minpac#status()
