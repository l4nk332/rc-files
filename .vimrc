call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
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
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'miyakogi/conoline.vim'
Plug 'elmcast/elm-vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pbogut/deoplete-elm'
Plug 'zchee/deoplete-jedi'
Plug 'mhinz/vim-startify'
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'
Plug 'flazz/vim-colorschemes'
Plug 'kshenoy/vim-signature'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'SirVer/ultisnips'
Plug 'metakirby5/codi.vim'

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
set background=dark
colorscheme gruvbox

" Sets bottom margin for cursor placement
set scrolloff=10

set colorcolumn=72,80
highlight ColorColumn ctermbg=8

" To improve screen rendering w/ large files
" set timeoutlen=1000

" Adjust keycode timeout length
" set ttimeoutlen=100

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
" By feeding ag output to fzf ignored files will be excluded
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Smart-case Search
set ignorecase
set smartcase

" Editor Config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Add line-wrapping indicator
set showbreak=↪

" Startify configuration
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

" Neomake
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)
let g:neomake_highlight_columns = 0

let g:neomake_javascript_enabled_makers = ['eslint']

" Neovim mapping to allow for switching out of terminal pane.
tnoremap <Esc> <C-\><C-n>

" UltiSnips trigger configuration.
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Custom shortcut to uppercase current word while in insert mode
inoremap <c-u> <esc>viwUwa
