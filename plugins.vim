packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('ndmitchell/ghcid', {'rtp': 'plugins/nvim'})
call minpac#add('morhetz/gruvbox')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-fugitive')
" call minpac#add('haya14busa/incsearch.vim')
" call minpac#add('dhruvasagar/vim-prosession')
call minpac#add('wincent/terminus')
call minpac#add('vim-airline/vim-airline')
call minpac#add('w0rp/ale')
call minpac#add('tpope/vim-commentary')
call minpac#add('junegunn/fzf.vim')
call minpac#add('dracula/vim')
" call minpac#add('eagletmt/neco-ghc')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('icymind/NeoSolarized')
call minpac#add('Shougo/deoplete.nvim')
call minpac#add('roxma/nvim-yarp')
call minpac#add('roxma/vim-hug-neovim-rpc')
call minpac#add('SirVer/ultisnips')
call minpac#add('tpope/vim-obsession')
" call minpac#add('ujihisa/neco-look')
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

" incsearch
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
" set hlsearch
" let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)

" let g:deoplete#enable_at_startup = 1
call deoplete#enable()

" Ale
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'haskell': ['brittany'], '*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_echo_msg_format = '%linter%: %s'

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
