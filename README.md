# My Neovim Config

```
git clone git@github.com:donny-son/nvim-config.git ~/.config/nvim
```

## Dependencies

### System Dependencies

#### System

- Live grep for Telescope : `brew install ripgrep`

#### LSP related

- Cargo Rust .. for prosemd_lsp
- Go .. for sqls
- Npm JS .. for pyright and many more

***by languages***
- dot language server >> `npm i -g dot-language-server`
- dockerfile language server >> `npm i -g dockerfile-language-server-nodejs`
- go >> `go install golang.org/x/tools/gopls@latest`
- diagnostic >> `npm i -g diagnostic-languageserver`
- json, html, css, eslint >> `npm i -g vscode-langservers-extracted`
- R >> `install.packages("languageserver")`
- sqls >> `go install github.com/lighttiger2505/sqls`
- bash >> `npm i -g bash-language-server`
- markdown >> `cargo install prosemd-lsp`
- typescript >> `npm install -g typescript typescript-language-server`
- solidity >> `npm i -g solidity-language-server`
- markdown >>  https://github.com/artempyanykh/marksman/releases
- mac >> `brew install lua-language-server`
- python(pyright) >> `npm i -g pyright`

### Vim Plugin Manager

Install plugin mananger `vim-plug` with the following command.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Plugins 

Install all plugins by `:PlugInstall` in nvim.

#### Nvim Treesitter

`:TSInstall all`

#### Tabnine

`:CmpTabnineHub`

#### Nvim DAP

- Go Delve
    ```bash
    go install github.com/go-delve/delve/cmd/dlv@latest
    ```

- Python
    ```bash
    poetry install debugpy
    ```
