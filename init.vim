" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @Astery

" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Description of some config for nvim in init.vim


" ===
" === UI config
" ===
syntax enable
syntax on	
set number	" number the line
set showmatch	" highlight matching {}[]()
set novisualbell	" no flashbell
set noeb	" no errorbell
set sc		" show command 
set gdefault	" do with the whole line by defualt
set cul	" show cursorline of the current line 
set autoread	" autoread reload the file while changed
set encoding=utf-8	" encoding utf-8
colo monokai

" ===
" === mapping
" ===
source ~/.config/nvim/mapping.vim
source ~/.config/nvim/mkmp.vim

" ===
" === space&tabs
" ===
set tabstop=4	" visual space per tab reading a <tab>
set expandtab
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4	" identation tab
set autoindent

" ===
" === search
" ===
set hls	" higlight the research 
set is	" keyword research
set ignorecase " ignore capital case when searching
set smartcase " let vim judge your case to search

" ===
" === folder
" ===
set foldenable	" enable the code fold

" ===
" === others
" ===
set completeopt=preview,menu	" complete the code
filetype plugin indent on	" plugins on
set magic	" regex magic on
set autowrite	" autosave
set backspace=indent,eol,start	" backspace delete the chr befor cursor

" ===
" === Vim-plug
" ===
set nocompatible	" not for vi
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
" surround ["' etc operation
Plug 'tpope/vim-surround'
" repeat the motion tpope's plug support
Plug 'tpope/vim-repeat'
" the nerdtree managing the filedir
Plug 'preservim/nerdtree'
" tagbar to browse the tag of your file
Plug 'preservim/tagbar'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" snippets store
Plug 'honza/vim-snippets'
" nerdcommenter for make comments or cancel
Plug 'preservim/nerdcommenter'
" vim-fzf-plug
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'	"necessary for vim-markdown
Plug 'plasticboy/vim-markdown'
" vim table mode for md
Plug 'dhruvasagar/vim-table-mode'
" preview the markdown on browser
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
" colortheme monokai
Plug 'crusoexia/vim-monokai'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ===
" === plugin config 
" ===
source ~/.config/nvim/vimplug.vim

" ===
" === codecompile
" ===
" makeprg compile the code with f5
map <leader><space> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python3 %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
endif
    endfunc



