call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
if !has('nvim')
    Plug 'tpope/vim-sensible'
endif
Plug 'ntpeters/vim-better-whitespace'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'miyakogi/conoline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'sbdchd/neoformat'
Plug 'mhinz/vim-startify'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pbogut/deoplete-elm'
Plug 'zchee/deoplete-jedi'

" Add plugins to &runtimepath
call plug#end()

" Set leader key
let mapleader=","

" map key for nerd tree
map <C-\> :NERDTreeToggle<CR>

" airline will show tabs for other buffers
let g:airline#extensions#tabline#enabled = 1
" enable airline by default
set laststatus=2

" Default mappings for multiple cursors
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_skip_key='<C-s>'
let g:multi_cursor_quit_key='<Esc>'

" Set move modifier key for move up and down
let g:move_key_modifier = 'C'

" Set tabstop to override default sleuth
set expandtab
set tabstop=4
set shiftwidth=4

" Set clipboard to map to key
set clipboard=unnamed

" Set line numbers
set number

" Number toggle script
function! NumberToggle()
	if(&relativenumber == 1)
		set number
        set norelativenumber
	else
        set relativenumber
	endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Set colorscheme
syntax enable
set t_Co=256
colorscheme apprentice

" Sets bottom margin for cursor placement
set scrolloff=10

" Indent Guideline settings
let g:indentLine_char = "¦"

set colorcolumn=72,80
highlight ColorColumn ctermbg=23

" To improve screen rendering w/ large files
set timeoutlen=1000

" Adjust keycode timeout length
set ttimeoutlen=100

" Highlight current line
let g:conoline_auto_enable = 1
let g:conoline_use_colorscheme_default_normal=1
let g:conoline_use_colorscheme_default_insert=1

" Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Elm Format on Save
let g:elm_format_autosave = 1

" Allow vim to detect filetype
filetype on

" configuration to disable scroll wheel
set mouse=""

" fzf configuration
set rtp+=/usr/local/opt/fzf

" Smart-case Search
set ignorecase
set smartcase

" Editor Config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Add line-wrapping indicator
set showbreak=↪

" Make NeoFormatter run Prettier Pre-Buffer Write
autocmd BufWritePre *.js,*.jsx Neoformat

" Strip Trailing whitespace on Pre-Buffer Write
autocmd BufWritePre * StripWhitespace

" Startify
let g:startify_custom_header = [
\ ' _  ___       _    ___  ___  ___',
\ '| || | | ___ | |_ |_  ||_  ||_  |',
\ '| ||_  ||   ||  _||_  ||_  ||  _|',
\ '|_|  |_||_|_||_,_||___||___||___|',
\ ]

let g:startify_change_to_dir = 0
