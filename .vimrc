call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'bronson/vim-trailing-whitespace'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'raphamorim/lucario'
Plug 'miyakogi/conoline.vim'
Plug 'elmcast/elm-vim'
Plug 'mhinz/vim-signify'
Plug 'Shutnik/jshint2.vim'

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
colorscheme lucario

" Sets bottom margin for cursor placement
set scrolloff=10

" Indent Guideline settings
let g:indentLine_char = "¦"

set colorcolumn=80,100

" To improve screen rendering w/ large files
set timeoutlen=1000

" Adjust keycode timeout length
set ttimeoutlen=100

" Highlight current line
let g:conoline_auto_enable = 1

" YouCompleteMe elm configuration
let g:ycm_semantic_triggers = {
    \ 'elm' : ['.'],
    \}

" Set up for signify

let g:signify_vcs_list = [ 'git' ]
let g:signify_cursorhold_insert = 1
let g:signify_cursorhold_normal = 1
let g:signify_update_on_bufenter = 0
let g:signify_update_on_focusgained = 1

nnoremap <leader>st SignifyToggle

" jshint configuration
let jshint2_save = 1
