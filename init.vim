"nvimrc
"
call plug#begin("~/.local/share/nvim/plugged")

" Custom Bundles
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

call plug#end()

filetype plugin indent on

" Color config
syntax on     " Activa coloreado de sintaxis.

" Esquema de color. Elegir uno
" set background=dark
set background=light

colorscheme molokai

" Use system clipboard
" For WSL look https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
set clipboard=unnamedplus

" Configuración de colores
if has('nvim')
  set termguicolors " True Color con NeoVim
else
  set t_Co 256 " 256 colores.
endif

" Basic vim setup
source ~/.config/nvim/basics.vim

" Path de Python
source ~/.config/nvim/python.vim

" FZF shortcuts
nmap <C-P> :Files<CR>
