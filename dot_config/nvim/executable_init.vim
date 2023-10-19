set number
syntax on
set wrap
set encoding=utf-8
set fileencoding=utf-8
set termguicolors
set t_Co=256
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set cindent
set nofoldenable
set title
set conceallevel=0
filetype plugin indent on
set colorcolumn=80

" Splits
set splitbelow
set splitright

" [Neovim only] Live find and replace
set inccommand=nosplit

" Custom commands
command! Light call themectl#theme#Light()
command! Dark call themectl#theme#Dark()
command! P :call fzf#run({'source': 'list-prjs', 'sink': 'cd'})
command! F :call fzf#vim#files('.')

" Toggle paste mode on and off
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set scrolloff=5

" set noshowmode
set noruler
set laststatus=0
set cmdheight=1

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Spell checking
set spelllang=en,it
set nospell

" Keyboard mappings

let mapleader=","

" Tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>ts :tab split<CR>

" requires vim-dispatch
nnoremap <F2> :Make<CR>
nnoremap <Leader>fm :Dispatch! dolphin %:h<CR>
nnoremap <Leader>t :Dispatch! konsole -e zsh -c "cd %:h; zsh"<CR>

" Select active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Resize splits
nnoremap <Leader>v+ :vertical resize +5<CR>
nnoremap <Leader>v- :vertical resize -5<CR>
nnoremap <Leader>+ :resize +5<CR>
nnoremap <Leader>- :resize -5<CR>

" Helps me quit my unhealthy addiction
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

nnoremap ; :

" Terminal
:tnoremap <Esc> <C-\><C-n>

" copy to system clipboard
vnoremap <leader>y "+y

" paste from system clipboard
nnoremap <leader>p "+p

" Latex
let g:tex_flavor = "latex"

" Limit vim info storage
set viminfo='100,<9999,s100

" lua
lua require('plugins')
lua require('lsp')

" deoplete
let g:deoplete#enable_at_startup = 1

" Theme and color scheme
" let g:neosolarized_contrast = "high"
" set background=dark
" colorscheme NeoSolarized

colorscheme catppuccin-mocha

" vim-fugitive settings
nnoremap <Leader>gd :Gvdiffsplit<CR>

" nvim-tree-lua settings
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :LuaTreeRefresh<CR>
nnoremap <leader>n :LuaTreeFindFile<CR>

" Vim-markdown settings
let g:vim_markdown_auto_insert_bullets = 1
