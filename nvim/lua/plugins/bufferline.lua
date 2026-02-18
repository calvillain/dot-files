return {
  "akinsho/bufferline.nvim",
  config = function()
    vim.opt.termguicolors = true
    local bufferline = require('bufferline')
    bufferline.setup{
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        style_preset = bufferline.style_preset.default,
        hover = {
          enabled = true,
          delay = 200,
          reveal = {'close'}
        },
        separator_style = "slant",
      }
    }
  end
}
