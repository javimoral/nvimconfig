# Neovim

Ficheros de configuración y módulos para Neovim.

```
cd ~
git clone git@github.com:javimoral/nvimconfig.git ~/.config/nvim

```

## Plugins

### Lista
* [Vim-airline](https://github.com/vim-airline/vim-airline) Barra de estado
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline/themes) Temas para que encaje con Solarized / Molokai
* [Molokai](https://github.com/tomasr/molokai)
* [FZF](https://github.com/junegunn/fzf)
### Instalación

Para la gestión de módulos se usa [Vim-Plug](https://github.com/junegunn/vim-plug)

Añadimos un plugin manualmente que se encargará de leer e instalar por nosotros el resto de plugins automáticamente.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

**Instalación de paquetes**
```
:PlugInstall
```

