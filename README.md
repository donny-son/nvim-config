# My Neovim Config

```
git clone git@github.com:donny-son/nvim-config.git ~/.config/nvim
```

## Dependencies

### System Dependencies

#### LSP related

***formats***
- Cargo Rust .. for prosemd_lsp
- Go .. for sqls
- Npm JS .. for pyright and many more

***by languages***
- sqls .. for SQL
- pyright .. for Python
- bashls .. for Bash
- sumneko_lua .. for Lua
- prosemd_lsp .. for Markdown

- debugger adapters

### Vim Plugin Manager

Install plugin mananger `vim-plug` with the following command.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Plugins 

Install all plugins by `:PlugInstall` in nvim.

