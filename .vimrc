set hidden
set history=1000
set ignorecase
set smartcase
set undofile
set undolevels=1000
set undoreload=10000
set noshowcmd
set noruler
set mouse=a
syntax on

set incsearch
set scrolljump=5
set scrolloff=5
set hlsearch
set list
set nu

set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nojoinspaces
set splitright
set splitbelow

nnoremap <leader><leader> :set invpaste paste?<CR>
autocmd InsertLeave * set nopaste"
set showmode
noremap $ $l
map j gj
map k gk
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zi
nnoremap g* g*zz
nnoremap g# g#zz
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()
inoremap jj <Esc>

color slate
