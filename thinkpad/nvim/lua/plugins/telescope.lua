return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>" },
      },
    }

