# Neovim

Ficheros de configuración y módulos para Neovim. Salvo por el nombre y ubicación de los ficheros, también deberían de ser compatibles con Vim

## Instalando Ficheros
En algunas versiones de Vim, el fichero ~/.vim/vimrc aparece como archivo de configuración, por lo que no es necesario hacer el enlace simbólico.

```
cd ~
git clone git@github.com:javimoral/nvimconfig.git ~/.config/nvim

```

## Módulos
Para la gestión de módulos se usa [Vim-Plug](https://github.com/junegunn/vim-plug)

Añadimos un plugin manualmente que se encargará de leer e instalar por nosotros el resto de plugins automáticamente. Algunos requerirán intervención manual.

### Instalación
**Neovim**
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Vim**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Instalación de paquetes**
```
:PlugInstall
```

### Lista
* [Ctrl-P](https://github.com/kien/ctrlp.vim) Búsqueda archivos comunes / más usados
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Autocompletado en C++, Go, Rust
* [Jedi](https://github.com/davidhalter/jedi) Autocompletado en Python
* [Vim-airline](https://github.com/vim-airline/vim-airline) Barra de estado
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline/themes) Temas para que encaje con Solarized / Molokai


#### Temas de color
* [Solarized](https://github.com/altercation/vim-colors-solarized)
* [Molokai](https://github.com/tomasr/molokai)

## Plugins con intervención manual

### YouComplete Me
```
# En Vim
cd ~/.vim/bundle/YouCompleteMe
# En neovim
cd ~/.config/nvim/plugged/YouCompleteMe
./install.py --clang-completion
```

Para activar la configuración más básica (completado de C++).

Comprobar otras opciones de autocompletado desde la opción de ayuda al llamar al script.

#### Configuración de YCM
La configuración de YCM se realiza mediante un fichero ```.ycm_extra_conf.py```

Hay un fichero base que se toma para todos los proyectos, hubicado en ```~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py```

Al ejecutar vim, YCM buscará en el directorio de trabajo una copia de ```.ycm_extra_conf.py``` siendo posible escribir configuraciones para un proyecto en particular.

#### STL en Linux
Con la configuración por defecto en Linux no encuentra las librerías de C++ (como ```list``` y otras de STL) debiendo modificar el fichero de configuración ```~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py```
 y en la sección de flags añadimos:
```
'-isystem',
'/usr/include/'
```

En OS X no es necesario ajustar los path.

#### Include Path
Para mostrar el path de include por defecto ejecutamos:
```
clang++ -E -x c++ - -v < /dev/null
```


Y hacemos saber a vim que queremos cargar este archivo como archivo por defecto, añadiendo al ```vimrc```:
```
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
```
Vim busca un fichero ```.ycm_extra_conf.py```en el directorio de trabajo en el que estamos. Es posible escribir configuración específica para una proyecto en particular creando el fichero ycm_extra_conf.py


#### Autocompletar para Rust
Es posible compilar YouCompleteMe con soporte para ```racerd```el motor de autocompletado de Rust. Necesitamos tener instalado ```rustc```y ```cargo```
Una vez instalado, necesitamos ubicar el código fuente del lenguaje en algún directorio y hacerle saber a YCMD donde se encuentra, añadiendo la siguiente linea a ```vimrc```
```
let g:ycm_rust_src_path = '/Users/javi/Downloads/rustc-1.12.0/src'
```

### Autocompletar en Go
El autocompletar en Go no necesita ninguna configuración y funciona a la primera 🎊🎉🎊🎉
