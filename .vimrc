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
Plug 'mhinz/vim-startify'
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'
Plug 'flazz/vim-colorschemes'
Plug 'kshenoy/vim-signature'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'ap/vim-css-color'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

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
colorscheme solarized

" Sets bottom margin for cursor placement
set scrolloff=10

set colorcolumn=72,80
highlight ColorColumn ctermbg=0

" Highlight current line
let g:conoline_auto_enable = 1
let g:conoline_use_colorscheme_default_normal=1
let g:conoline_use_colorscheme_default_insert=1

" Elm Format on Save
let g:elm_format_autosave = 1

" Allow vim to detect filetype
filetype on

" fzf configuration
set rtp+=/usr/local/opt/fzf
" Define Find command to fuzzy find through search results
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)

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

let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['flow']

" Neovim mapping to allow for switching out of terminal pane.
tnoremap <Esc> <C-\><C-n>

" Deoplete
let g:deoplete#enable_at_startup = 1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Custom shortcut to open the vimrc as newtab
nnoremap <leader>ev :tabnew ~/.vimrc<cr>

" Custom autocmd abbreviation to insert pdb import statement in python
" FileTypes
augroup filetype_python
    autocmd!
    autocmd FileType python :iabbrev <buffer> pdb import pdb; pdb.set_trace();
augroup END


augroup flow_ext_to_js
    autocmd BufReadPost *.flow set syntax=javascript
augroup END

" Custom function/mapping to open new split terminal
function! TerminalSplit()
    :vs
    :terminal
    setlocal nonumber
    :normal i
endfunction

" Custom mapping to open new tab
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

set grepprg=rg\ --vimgrep
