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

```:CocConfig```
```
{
   "jedi.enable": true,
   "jedi.startupMessage": false,
   "jedi.markupKindPreferred": "plaintext",
   "jedi.trace.server": "off",
   "jedi.jediSettings.autoImportModules": [],
   "jedi.executable.command": "jedi-language-server",
   "jedi.executable.args": [],
   "jedi.completion.disableSnippets": false,
   "jedi.completion.resolveEagerly": false,
   "jedi.diagnostics.enable": true,
   "jedi.diagnostics.didOpen": true,
   "jedi.diagnostics.didChange": true,
   "jedi.diagnostics.didSave": true,
   "jedi.workspace.extraPaths": []
}
```


