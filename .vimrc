call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'miyakogi/conoline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'sbdchd/neoformat'
" Plug 'vim-syntastic/syntastic'
" Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mhinz/vim-startify'

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
colorscheme nord

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

" jshint configuration
" let jshint2_save = 1

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

" Syntastic configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_python_flake8_args='--ignore=E1,E2,E3,E4,E5,E6,E7,E8,E9,W1,W2,W3,W4,W5,W6,W7,W8,W9'
" let g:syntastic_javascript_checkers=['eslint']

" Startify
let g:startify_custom_header = [
\ ' _        _______  _______            _________ _______',
\ '( (    /|(  ____ \(  ___  )  |\     /|\__   __/(       )',
\ '|  \  ( || (    \/| (   ) |  | )   ( |   ) (   | () () |',
\ '|   \ | || (__    | |   | |  | |   | |   | |   | || || |',
\ '| (\ \) ||  __)   | |   | |  ( (   ) )   | |   | |(_)| |',
\ '| | \   || (      | |   | |   \ \_/ /    | |   | |   | |',
\ '| )  \  || (____/\| (___) |    \   /  ___) (___| )   ( |',
\ '|/    )_)(_______/(_______)     \_/   \_______/|/     \|'
\ ]
