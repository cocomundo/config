require("plugins")
--
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd[[
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

]]
