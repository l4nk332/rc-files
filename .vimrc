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
Plug 'elmcast/elm-vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pbogut/deoplete-elm'
Plug 'zchee/deoplete-jedi'
Plug 'brendonrapp/smyck-vim'
Plug 'w0rp/ale'
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
colorscheme smyck

" Sets bottom margin for cursor placement
set scrolloff=10

set colorcolumn=72,80
highlight ColorColumn ctermbg=8

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

" ALE Config
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

nmap <silent> <C-l> <Plug>(ale_previous_wrap)
nmap <silent> <C-h> <Plug>(ale_next_wrap)

:command AF ALEFix

nnoremap <C-m> :call ToggleAleLocList()<cr>

let g:ale_set_quickfix = 1
let g:ale_open_list = 0

function! ToggleAleLocList()
    if g:ale_open_list
        cclose
        let g:ale_set_quickfix = 0
        let g:ale_open_list = 0
    else
        copen
        let g:ale_open_list = 1
        let g:ale_set_quickfix = 0
    endif
endfunction

" Startify configuration
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 0
