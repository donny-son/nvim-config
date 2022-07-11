-- code folding
vim.keymap.set('n', '<leader>co',
  function() return require('fold-cycle').open() end,
  { silent = true, desc = 'Fold-cycle: open folds' })
vim.keymap.set('n', '<leader>cc',
  function() return require('fold-cycle').close() end,
  { silent = true, desc = 'Fold-cycle: close folds' })
vim.keymap.set('n', '<leader>cz',
  function() return require('fold-cycle').toggle_all() end,
  { remap = true, silent = true, desc = 'Fold-cycle: close all folds' })

-- symbols outline
vim.keymap.set('n', '<C-y>',
  '<cmd>SymbolsOutline<cr>',
  { remap = true, silent = true, desc = 'Toggle SymbolsOutline' })

-- refresh init.vim and pluginstall
vim.keymap.set(
  'n',
  '<leader>zz',
  '<cmd>source ~/.config/nvim/init.vim | PlugInstall<cr>',
  { remap = false, desc = 'Refresh and PlugInstall' }
)

-- neogit
vim.keymap.set(
  'n',
  '<leader>ng',
  '<cmd>Neogit<cr>',
  { remap = false, silent = true, desc = 'Start Neogit' }
)
