call plug#begin('~/AppData/Local/nvim/plugged')

" Files tree navigation
Plug 'preservim/nerdtree'

" Theming for neovim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Coc vim for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Display thin vertical lines at each indentation
Plug 'yggdroot/indentLine'

" Fuzzy search https://github.com/antoinemadec/coc-fzf
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}


" Auto add pairs
Plug 'jiangmiao/auto-pairs'

" Git integration
Plug 'tpope/vim-fugitive'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()

autocmd VimEnter * NERDTree

" Enables syntax highlighting
syntax on

set termguicolors

set tabstop=4
set softtabstop=4
set expandtab

" Enable autoindents
set smartindent

" Number of space for autoindents
set shiftwidth=4

" Enable number and width of number
set number
set numberwidth=4

" Highlights the matched text pattern when searching
set incsearch
set nohlsearch

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" Config for coc.vim
set encoding=utf-8

set hidden

set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

if has("nvim-0.5.0") || has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>"
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh
endif


