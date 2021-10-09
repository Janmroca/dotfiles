" ----------------------------------------------------------------------------
" PLUGIN SETTINGS
" ----------------------------------------------------------------------------

"Specify a directory for plugins
call plug#begin('~/.nvim/plugged')

"Color theme
Plug 'morhetz/gruvbox'

"Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug '~/.fzf'

"Comments
Plug 'tpope/vim-commentary'

"Sorrounding chars
Plug 'tpope/vim-surround'

"Vim/Tmux navigation
Plug 'christoomey/vim-tmux-navigator'

"Initialize plugin system
call plug#end()

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

"Set leader key
let mapleader="\<SPACE>"

"Unbind arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

"Toggle search higlight
nmap <Leader>w :set hlsearch!<CR>

"Fix linewise behaviour
nnoremap j gj
nnoremap k gk

"Return to last window
nmap <C-e> :e#<CR>

"Toggle display number
nmap <Leader>l :setlocal number!<CR>

"Close buffer
nmap <C-w> :bd<CR>

"Save buffer
nmap <C-s> :w<CR>

"Travel windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Toggle between normal and relative numbering.
nnoremap <Leader>ñ :call NumberToggle()<cr>

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

"Set colorscheme
let g:gruvbox_contrast_dark = 'hard' "Hard contrast dark theme
colorscheme gruvbox
set bg=dark "Dark theme

"Activate syntax
syntax on

"Set basic options
set showmatch
set number
set expandtab
set tabstop=4
set shiftwidth=4

"Set search options
set incsearch
set ignorecase
set smartcase
set hlsearch

"Disable preview windows
set completeopt-=preview

"Allows switching buffers while unsaved
set hidden

"Set term colors
set termguicolors

"Disable insert status
set noshowmode

" ----------------------------------------------------------------------------
" FUNCTIONS
" ----------------------------------------------------------------------------

"Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" ----------------------------------------------------------------------------
" COMMANDS
" ----------------------------------------------------------------------------

"Tell Vim which characters to show for expanded TABs,
"trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

