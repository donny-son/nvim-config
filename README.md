# My init.vim

```
git clone git@github.com:donny-son/nvim-config.git ~/.config/nvim
```

## Dependencies

### Plugin Manager

Install plugin mananger `vim-plug` with the following command.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Install all plugins by `:PlugInstall` in nvim.

### Coc Settings(`coc-settings.json`)

Install coc extensions for python development.

```
:CocInstall coc-pyright coc-json coc-pairs
```

Configure `coc-settings.json`. 
The virtual environment path must be set differently since Poetry behaves differently per system.

**MacOS** 

```
"python.venvPath": "$HOME/Library/Caches/pypoetry/virtualenvs/"
```

**Linux** 

```
"python.venvPath": "$HOME/.cache/pypoetry/virtualenvs/"
```

