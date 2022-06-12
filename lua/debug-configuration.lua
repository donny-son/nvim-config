-- nvim dap
vim.keymap.set("n", "<leader>dd", ":lua require'dap'.continue()<CR>") -- start debugger

-- standard movements for stepping in and out
vim.keymap.set("n", "<leader>dj", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>dk", ":lua require'dap'.step_out()<CR>")

-- debug "next" line
vim.keymap.set("n", "<leader>dn", ":lua require'dap'.step_over()<CR>") -- next line

vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")

vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>dq", ":lua require'dap'.terminate()<CR>")

-- nvim dap python
vim.keymap.set("n", "<leader>tm", ":lua require('dap-python').test_method()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tc", ":lua require('dap-python').test_class()<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>tv", "<ESC>:lua require('dap-python').debug_selection()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tt", ":!python -m unittest %<CR>", { noremap = true })

local venv = os.getenv("VIRTUAL_ENV");

local dappython = require('dap-python');
dappython.setup(string.format("%s/bin/python", venv))
-- dappython.test_runner = 'pytest' -- defaults to 'unitttest'

local dap = require('dap');
dap.adapters.python = {
  type = 'executable';
  command = string.format("%s/bin/python", venv);
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    -- for nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch File";

    -- for debugpy
    program = "${file}";
    pythonPath = function()
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(venv .. '/bin/python') == 1 then
        return venv .. '/bin/python'
      elseif vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        return cwd .. '/venv/bin/python'
      elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        return cwd .. '/.venv/bin/python'
      else
        return '/usr/bin/python'
      end
    end;
  },
}

-- delete vscode launch.json trailing comma
require('dap.ext.vscode').load_launchjs()

vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '⭐️', texthl = '', linehl = '', numhl = '' })

require('dapui').setup()
require('nvim-dap-virtual-text').setup()

local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
