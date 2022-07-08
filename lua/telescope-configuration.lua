require('telescope').setup {
  defaults = {
    prompt_prefix = "🔭 "
  }
}

-- Setup global config
require('neoterm').setup({
  clear_on_run = true, -- run clear command before user specified commands
  mode = 'horizontal', -- vertical/horizontal/fullscreen
  noinsert = false -- disable entering insert mode when opening the neoterm window
})

-- env search
require('telescope').load_extension('env')
