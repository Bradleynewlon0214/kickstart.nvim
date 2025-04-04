return { -- Autoformat
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = false }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = {
        'prettierd',
      },
      javascript = {
        'prettierd',
      },
      vue = {
        'prettierd',
      },
    },
    formatters = {
      prettierd = {
        env = {
          string.format('PRETTIERD_DEFAULT_CONFIG=%s', vim.fn.expand '~/Documents/vmslite/.prettierrc'),
        },
      },
    },
  },
}
