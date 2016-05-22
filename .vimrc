set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
"Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'digitaltoad/vim-jade'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Valloric/MatchTagAlways'
Plugin 'sjl/gundo.vim'
" colorschemes
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'https://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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
let g:vundle_depth = 1


" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1

" Nerd Tree config
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Tab switch keys
nnoremap <F3>  :tabp<CR>
nnoremap <F4>  :tabn<CR>
nnoremap <F5> :tabnew<CR>
inoremap <F3>  <Esc>:tabp<CR>i
inoremap <F4>  <Esc>:tabn<CR>i
inoremap <F5> <Esc>:tabnew<CR>


" YouCompleteMe config
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
set completeopt=menuone

" Line number config
set number
set numberwidth=6


" Tab stop config
set softtabstop=4
set shiftwidth=4
set expandtab


" Commandline Tab completion
set wildmode=longest,full
set wildmenu


" Color Scheme
set background=dark
colorscheme default

" Move lines up/down
nnoremap <C-S-j> :m<Space>.+1<CR>
nnoremap <C-S-k> :m<Space>.-2<CR>
inoremap <C-S-j> <Esc>:m<Space>.+1<CR>
inoremap <C-S-k> <Esc>:m<Space>.-2<CR>
vnoremap <C-S-j> :m<Space>'>+1<CR>
vnoremap <C-S-k> :m<Space>'<-2<CR>



" Copy and Paste
inoremap <C-v> <Esc>"+pi
nnoremap <C-v> p
vnoremap <C-c> y

" Toggle comments
map <C-_> <leader>c<Space>


" Multi Select
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


let mapleader=","
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>


" open ag.vim
nnoremap <leader>a :Ag


