" let the leaderkey be "'" 
let mapleader = "'" 

" open the nvim rc file
noremap <leader>rc :e ~/.config/nvim/init.vim<CR>

" for files opt
nnoremap tw :w<CR>
nnoremap tt :wq<CR>
nnoremap tq :q<CR>
nnoremap ts :source ~/.config/nvim/init.vim<CR>

" mappings about tab

nnoremap <leader>w <C-w><C-w>

" some motions mapping
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap j gj
nnoremap k 1k
noremap Y y$

" set fold mapping
nnoremap <space>o zA    " open a closed fold

" some text writing mappings
nnoremap <leader><CR> :set nohls<CR>
noremap < <<
noremap > >>
vnoremap . :norm.<CR>

" set split term
noremap <leader>ht :set splitbelow<CR>:split term://$SHELL<CR>
noremap <leader>vt :set splitright<CR>:vsplit term://$SHELL<CR>

tmap <leader>n <C-\><C-n>
tmap <leader>w <C-\><C-n><C-w><C-w>

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>
