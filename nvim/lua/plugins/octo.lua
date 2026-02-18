return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  opts = {
    -- or "fzf-lua" or "snacks" or "default"
    picker = "telescope",
    -- bare Octo command opens picker of commands
    enable_builtin = true,
  },
  keys = {
    {
      "<leader>gi",
      "<CMD>Octo issue list<CR>",
      desc = "List [G]itHub [I]ssues",
    },
    {
      "<leader>gp",
      "<CMD>Octo pr list<CR>",
      desc = "List [G]itHub [P]ullRequests",
    },
    -- {
    --   "<leader>gd",
    --   "<CMD>Octo discussion list<CR>",
    --   desc = "List [G]itHub [D]iscussions",
    -- },
    {
      "<leader>gn",
      "<CMD>Octo notification list<CR>",
      desc = "List [G]itHub [N]otifications",
    },
    {
      "<leader>gs",
      function()
        require("octo.utils").create_base_search_command { include_current_repo = true }
      end,
      desc = "[G]itHub [S]earch",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    -- OR "ibhagwan/fzf-lua",
    -- OR "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
