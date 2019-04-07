inoremap jk <Esc>
let mapleader = " "
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

nnoremap <leader>ve :edit ~/.config/nvim/<enter>
nnoremap <leader>vs :source ~/.config/nvim/init.vim<enter>

nnoremap <leader>f :Files<enter>
nnoremap <leader>b :Buffers<enter>
nnoremap <leader>ll :BLines<enter>
nnoremap <leader>la :Lines<enter>
nnoremap <leader>g :GFiles<enter>

nnoremap <leader>lm :!latexmk -pdf %<enter>

nnoremap <leader>ts :setlocal spell!<enter>

nnoremap <leader>h :noh<enter>

nnoremap <enter> <enter>:noh<enter>
