return {
  "folke/todo-comments.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    local todocomments = require("todo-comments")
    todocomments.setup {}
  end
}
