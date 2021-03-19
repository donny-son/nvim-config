# My init.vim

## Dependencies
```
sudo apt install neovim
```

## Copy init.vim
```
mkdir ~/.config/nvim
nvim .config/nvim/init.vim 
# Paste contents.
```

## Plugin Manager
use ```vim-plug```.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Coc Settings 
```
pip install -U jedi-language-server
```

```
:CocInstall coc-jedi coc-json coc-pairs
```




