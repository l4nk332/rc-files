call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'bronson/vim-trailing-whitespace'
Plug 'walm/jshint.vim'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
Plug 'alessandroyorba/sierra'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" Set leader key
let mapleader=","

" Add plugins to &runtimepath
call plug#end()

" map key for nerd tree
map <C-t> :NERDTreeToggle<CR>

" airline will show tabs for other buffers
let g:airline#extensions#tabline#enabled = 1
" enable airline by default
set laststatus=2

" Default mappings for multiple cursors
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_skip_key='<C-s>'
let g:multi_cursor_quit_key='<Esc>'

" Set auto-save on start-up
let g:auto_save = 1

" Set move modifier key for move up and down
let g:move_key_modifier = 'C'

" Set tabstop to override default sleuth
set tabstop=2
set shiftwidth=2

" Set clipboard to map to key
set clipboard=unnamed

" Set line numbers
set number

" Ctrl P Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'c'

" Set colorscheme
syntax enable
set t_Co=256
let g:sierra_Sundown = 1
colorscheme sierra

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
