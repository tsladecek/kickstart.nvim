return { -- Autoformat
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      python = { 'ruff_fix', 'ruff_fmt' },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      xml = { 'xmlformat' },
    },
    -- for some reason, ruff does not work out of the box. Bellow is a copied config for github repo
    formatters = {
      ruff_fmt = {
        -- https://github.com/stevearc/conform.nvim/blob/master/lua/conform/formatters/ruff_format.lua
        command = 'ruff',
        args = {
          'format',
          '--force-exclude',
          '--stdin-filename',
          '$FILENAME',
          '-',
        },
        stdin = true,
        -- https://github.com/stevearc/conform.nvim/blob/4660e534bf7678ee0f85879aa75fdcb6855612c2/lua/conform/util.lua#L50
        -- cwd = require('conform.util').root_file {
        --   'pyproject.toml',
        --   'ruff.toml',
        --   '.ruff.toml',
        -- },
      },
    },
  },
}
