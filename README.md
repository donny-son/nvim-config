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

### Coc Settings 

Install python language server in the python environment prior to installing all Coc plugins. 

```
:CocInstall coc-jedi coc-json coc-pairs
```

