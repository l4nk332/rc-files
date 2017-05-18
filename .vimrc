call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'bronson/vim-trailing-whitespace'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'miyakogi/conoline.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'sbdchd/neoformat'

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
set background=dark
set termguicolors
colorscheme quantum

" Sets bottom margin for cursor placement
set scrolloff=10

" Indent Guideline settings
let g:indentLine_char = "¦"

set colorcolumn=80,100
highlight ColorColumn ctermbg=23

" To improve screen rendering w/ large files
set timeoutlen=1000

" Adjust keycode timeout length
set ttimeoutlen=100

" Highlight current line
let g:conoline_auto_enable = 1

" YouCompleteMe configuration
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" YouCompleteMe elm configuration
let g:ycm_semantic_triggers = {
    \ 'elm' : ['.'],
    \}
set completeopt-=preview

" Allow vim to detect filetype
filetype on

nnoremap <leader>st SignifyToggle

" jshint configuration
let jshint2_save = 1

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
autocmd BufWritePre *.js Neoformat
