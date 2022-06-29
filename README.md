# My Neovim Config

```
git clone git@github.com:donny-son/nvim-config.git ~/.config/nvim
```

## Dependencies

### System Dependencies

- Live grep for Telescope : `brew install ripgrep`
- NodeJS, Yarn : install from brew and manage versions of node with nvm
- Rust 
- Go

### LSP related

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
- mac >> `brew install lua-language-server`
- python(pyright) >> `npm i -g pyright`

```bash
brew install lua-language-server

npm i -g dot-language-server
npm i -g dockerfile-language-server-nodejs
npm i -g diagnostic-languageserver
npm i -g vscode-langservers-extracted
npm i -g bash-language-server
npm i -g typescript typescript-language-server
npm i -g solidity-language-server
npm i -g pyright
go install golang.org/x/tools/gopls@latest
go install github.com/lighttiger2505/sqls

cargo install prosemd-lsp

install.packages("languageserver") # R
```

- markdown >>  https://github.com/artempyanykh/marksman/releases

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

- Python: for each virtual environment
    ```bash
    poetry install debugpy
    ```
