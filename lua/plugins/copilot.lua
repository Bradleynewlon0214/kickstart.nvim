return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken',
    config = function()
      require('CopilotChat').setup {}
      local builtin = require 'CopilotChat'
      vim.keymap.set('n', '<leader>co', function()
        builtin.open {}
      end, { desc = '[C]hat [O]pen' })
    end,
    opts = {
      -- See Configuration section for options
      model = 'claude-3.5-sonnet',
    },
  },
}
