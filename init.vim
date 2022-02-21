" This is my nvim config for webdev
"*** Vim-Plug Plugins (https://github.com/junegunn/vim-plug) ***
call plug#begin()
" Theme Sonokai
Plug 'sainnhe/sonokai'

" commenting text
Plug 'tpope/vim-commentary'

" Autocomplete for html/css/js and beautification
Plug 'neoclide/coc.nvim', {'branch': 'master'}
let g:coc_global_extensions = ['coc-eslint', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
call plug#end()

"*** Plugin Config ***
" Sonokai Theme - Important!!
if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
colorscheme sonokai

" Prettier Command
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


" some basics
set nocompatible
set number
syntax on
set autoindent

" enable wildmenu with autocompletion
set wildmenu
set wildmode=list:longest,full

" show tabs, precedes and trailing spaces
set listchars=tab:┄\┄,nbsp:␣,trail:•,precedes:«,extends:»
set list

" UTF8
set encoding=utf-8

" autofolding dependend on syntax
"set foldmethod=syntax

" highlight search results
set hlsearch

" show partial results of search
set incsearch

" ...
set ignorecase

" tab and space settings
set shiftwidth=4
" remove a tab(4 spaces) with one return press
set softtabstop=4
" tabs are spaces
"set expandtab


" display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Change splitside
set splitbelow
set splitright

" Ignore case when searching
set ignorecase

" No annoying sound on errors
set novisualbell
set noerrorbells

" spell checks
"set spell
"set spelllang=de

" always vertical diffsplits
set diffopt=vertical

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search : ctrl + l
nnoremap <C-L> :nohl<CR><C-L>

" !CTAGS NECESSARY!
" open definition in vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>"

