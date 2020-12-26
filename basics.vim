" Tabulación y espacios
set expandtab   " Tabula usando espacios
set shiftwidth=2
set tabstop=2     " Espacios que mostramos por tabulador
set smarttab
set cindent
let indent_guides_enable_on_vim_startup = 1

" UI config
set number          " Muestra número de lineas.
set cursorline      " Señala la linea actual.
set wildmenu        " Autocompletado para la barra de comandos.
set lazyredraw      " Redibuja pantalla solo cuando es estríctamente
" necesario.
set showmatch       " Señala [{()}]
set mouse=n         " Activa el ratón
"set ttymouse=xterm2 " Compatibilidad con la consola
set list listchars=tab:⇥⇥,eol:↵ " Muestralos tabuladores y saltos de linea.
set so=14     " Lineas movidas por scroll
au CursorHoldI * stopinsert " Salir del modo inserción tras 4 segundos.

" Folding (ocultado de bloques anidados)
set foldenable    " Activa folding
set foldlevelstart=10 " Dobla a partir de 10.
set foldnestmax=10  " Máximo de 10
set foldmethod=indent " Basado en identado
nnoremap <space> za

" Movimiento
" Comienzo de la linea
noremap B ^
" Final de la linea
noremap E $

" Desactivamos $/^
noremap $ <nop>
noremap ^ <nop>


