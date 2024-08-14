return {
  "stevearc/conform.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        python = { "isort", "black" },
      },
    })

    conform.formatters.black = {
      prepend_args = { "-S" },
    }

    vim.keymap.set({ "n", "v" }, "<leader>ft", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
