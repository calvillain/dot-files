return {

  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-telescope/telescope-symbols.nvim',
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1 },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },

  -- require('telescope').load_extension('harpoon')
  -- require('telescope').load_extension('git_worktree')

  -- [[ Configure Telescope ]]
  -- See `:help telescope` and `:help telescope.setup()`
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    local function filenameFirst(_, path)
	local tail = vim.fs.basename(path)
	local parent = vim.fs.dirname(path)
	if parent == "." then return tail end
	return string.format("%s\t\t%s", tail, parent)
    end

    telescope.setup {
      defaults = {
        path_display = filenameFirst,
        layout_strategy = "horizontal",
        layout_config = {
          preview_width = 0.65,
          horizontal = {
            size = {
              width = "95%",
              height = "95%",
            },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
          }
        },
        mappings = {
          i = {
            ['<C-u>'] = false,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-d>"] = actions.move_selection_previous,
          },
        },
      },
    }

    -- Enable telescope fzf native, if installed
    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles', remap = true })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = '[F]ind [O]ld files', remap = true })
    -- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind  [B]uffers' })
    vim.keymap.set('n', '<leader>fS', builtin.git_status, { desc = '' })
    vim.keymap.set('n', '<leader>fm', ":Telescope harpoon marks<CR>", { desc = '[F]ind Harpoon [M]arks' })
    -- vim.keymap.set("n", "<Leader>fn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)

    vim.api.nvim_set_keymap("n", "<leader>fn", ":TodoTelescope<CR>", { noremap = true }) -- [F]ind [N]otes 
    vim.api.nvim_set_keymap("n", "<leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", { noremap = false })

    -- See `:help telescope.builtin`
    vim.keymap.set('n', '<leader>fz', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = true,
      })
    end, { desc = '[F]ind Fu[Z]zy search in current buffer]' })
  end
}
