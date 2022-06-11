local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- json, html, css, eslint >> npm i -g vscode-langservers-extracted
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
}
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
require'lspconfig'.eslint.setup{}

-- R >> install.packages("languageserver")
require'lspconfig'.r_language_server.setup{}

-- sqls >> go get github.com/lighttiger2505/sqls
require'lspconfig'.sqls.setup{}

-- bash >> npm i -g bash-language-server
require'lspconfig'.bashls.setup{}

-- markdown >> cargo install prosemd-lsp
require'lspconfig'.prosemd_lsp.setup {
  capabilities = capabilities,
  on_attach = function()
  end,
}

-- tabnine
local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		env = true,
	};
	show_prediction_strength = true;
})

-- lua
  -- mac >> brew install lua-language-server
  -- linux >> download binaries from https://github.com/sumneko/lua-language-server/releases.
require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = function()
  end,
}

-- python(pyright) >> npm i -g pyright
require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "<leader>gj", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>gk", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>cd", vim.lsp.buf.code_action, {buffer=0})
    end,
}

-- pictograms for completion
vim.opt.completeopt = {"menu", "menuone", "noselect"}
local ok, lspkind = pcall(require, "lspkind")
if not ok then
  return
end
lspkind.init()

-- completion configuration
local cmp = require'cmp'
cmp.setup({
  insert = true,
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[lua]",
        path = "[path]",
        luasnip = "[snip]",
        cmp_tabnine = "[AI]",
        emoji = "[EMJI]",
      }
    }
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-s>'] = cmp.mapping.complete(),
    ['<C-a>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 2 },
 	{ name = 'cmp_tabnine' },
    { name = 'emoji' },
  })
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

