set nocompatible              " be iMproved, required
filetype off                  " required

set exrc
set secure

set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

" set color caractere at collumn 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree' 
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

Plugin 'tomtom/tcomment_vim'
Plugin 'flazz/vim-colorschemes'

" Snippets
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" AutoCompletiom
Plugin 'ycm-core/YouCompleteMe'

" Reindent code
Plugin 'godlygeek/tabular'

" Gui improvement
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
Plugin 'vim-airline/vim-airline-themes'

"
Plugin 'dense-analysis/ale'

"
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': './install --bin' }

" Syntax checking 
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
