packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('morhetz/gruvbox')
call minpac#add('wincent/terminus')
" call minpac#add('altercation/vim-colors-solarized')
call minpac#add('vim-airline/vim-airline')
call minpac#add('w0rp/ale')
call minpac#add('tpope/vim-commentary')
call minpac#add('junegunn/fzf.vim')
call minpac#add('dracula/vim')
call minpac#add('eagletmt/neco-ghc')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('icymind/NeoSolarized')
call minpac#add('Shougo/deoplete.nvim')
call minpac#add('roxma/nvim-yarp')
call minpac#add('roxma/vim-hug-neovim-rpc')
call minpac#add('SirVer/ultisnips')
call minpac#add('ujihisa/neco-look')
call minpac#add('tpope/vim-surround')

call minpac#add('honza/vim-snippets')

" Load the plugins right now. (optional)
packloadall

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" let g:deoplete#enable_at_startup = 1
call deoplete#enable()

filetype plugin on

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

inoremap jk <Esc>

set background=dark
colorscheme NeoSolarized

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

set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = " "

" Ale
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'haskell': ['brittany'], '*': ['remove_trailing_lines', 'trim_whitespace']}

let g:tex_flavor = "latex"

autocmd FileType tex setlocal commentstring=%%s
autocmd FileType haskell setlocal commentstring=--%s

nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>
nnoremap <leader>wv :vsplit<enter>
nnoremap <leader>ws :split<enter>

tnoremap jk <c-\><c-n>
nnoremap <enter> A<enter><esc>
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

nnoremap <leader>ve :edit ~/.config/nvim/init.vim<enter>
nnoremap <leader>vs :source ~/config/nvim/init.vim<enter>

nnoremap <leader>f :Files<enter>
nnoremap <leader>b :Buffers<enter>
nnoremap <leader>ll :BLines<enter>
nnoremap <leader>la :Lines<enter>
nnoremap <leader>g :GFiles<enter>

nnoremap <leader>lm :!latexmk -pdf %<enter>

nnoremap <leader>ts :setlocal spell!<enter>
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
