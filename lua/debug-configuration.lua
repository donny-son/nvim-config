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

local venv = os.getenv("VIRTUAL_ENV");

-- nvim-dap-go
local dapgo = require('dap-go')
dapgo.setup();
vim.keymap.set("n", "<leader>dt", ":lua require('dap-go').debug_test()<CR>", { noremap = true, silent = true });

-- nvim-dap-python
local dappython = require('dap-python');
dappython.setup(
  string.format("%s/bin/python", venv),
  {
    vim.keymap.set("n", "<leader>tm", ":lua require('dap-python').test_method()<CR>", { noremap = true, silent = true });
    vim.keymap.set("n", "<leader>tc", ":lua require('dap-python').test_class()<CR>", { noremap = true, silent = true });
    vim.keymap.set("v", "<leader>tv", "<ESC>:lua require('dap-python').debug_selection()<CR>",
      { noremap = true, silent = true });
    vim.keymap.set("n", "<leader>tt", ":!python -m unittest %<CR>", { noremap = true });
    vim.keymap.set("n", "<leader>tp", ":!python -m pytest %<CR>", { noremap = true });
  }
)

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

-- remember to delete vscode launch.json trailing comma
require('dap.ext.vscode').load_launchjs()

vim.fn.sign_define('DapBreakpoint', { text = '🍎', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '🐛', texthl = '', linehl = '', numhl = '' })

require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7"),
  layouts = {
    {
      elements = {
        'scopes',
        'breakpoints',
        'stacks',
        'watches',
      },
      size = 40,
      position = 'left',
    },
    {
      elements = {
        'repl',
        'console',
      },
      size = 10,
      position = 'bottom',
    },
  },
  -- sidebar = {
  --   -- You can change the order of elements in the sidebar
  --   elements = {
  --     -- Provide as ID strings or tables with "id" and "size" keys
  --     {
  --       id = "scopes",
  --       size = 0.35, -- Can be float or integer > 1
  --     },
  --     { id = "breakpoints", size = 0.15 },
  --     { id = "stacks", size = 0.25 },
  --     { id = "watches", size = 0.25 },
  --   },
  --   size = 70,
  --   position = "right", -- Can be "left", "right", "top", "bottom"
  -- },
  -- tray = {
  --   elements = { "repl" },
  --   size = 15,
  --   position = "bottom", -- Can be "left", "right", "top", "bottom"
  -- },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "rounded", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  }
})

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
