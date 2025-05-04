return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.keybinds"] = {
              config = {
                vim.keymap.set("n", "<leader>nm", "<cmd>Neorg workspace main<CR>", {}),
                vim.keymap.set("n", "<leader>na", "<cmd>Neorg workspace agenda<CR>", {}),
                vim.keymap.set("n", "<leader>nj", "<cmd>Neorg journal today<CR>", {}),
                vim.keymap.set("n", "<leader>ny", "<cmd>Neorg journal yesterday<CR>", {})
              },
            },
          ["core.concealer"] = {
              config = {
                folds = true,
                icon_preset = "basic",
              },
            },
          ["core.journal"] = {
              config = {
                --journal_folder = "journal",
                workspace = "journal",
              },
            },
          ["core.dirman"] = {
            config = {
              workspaces = {
                main = "~/norg/main",
                agenda = "~/norg/agenda",
                journal = "~/norg",
            },
              index = "index.norg",
              default_workspace = "main"
          }
        }
      }
    }
    end
}
