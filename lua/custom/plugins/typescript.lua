return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
  config = function()
    require("typescript-tools").setup{
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",

        "vue",
      },
      settings = {
        tsserver_plugins = {
          "@vue/typescript-plugin"
        }
      }
    }
  end
}
      -- tsserver = {
      --   single_file_support = false,
      --   root_dir = require('lspconfig.util').root_pattern('node-server'),
      --   init_options = {
      --     plugins = {
      --       {
      --         name = "@vue/typescript-plugin",
      --         location = "home/bradley/.nvm/versions/node/v16.5.0/lib/node_modules/@vue/typescript-plugin",
      --         languages = { "javascript", "typescript", "vue" }
      --       }
      --     }
      --   }
      -- },
