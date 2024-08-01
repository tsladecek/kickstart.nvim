return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  init = function()
    vim.keymap.set('x', '<leader>Re', function()
      require('refactoring').refactor 'Extract Function'
    end, { desc = '[e]xtract to function' })
    vim.keymap.set('x', '<leader>Rf', function()
      require('refactoring').refactor 'Extract Function To File'
    end, { desc = 'extract function to [f]ile' })
    -- Extract function supports only visual mode
    vim.keymap.set('x', '<leader>Rv', function()
      require('refactoring').refactor 'Extract Variable'
    end, { desc = 'extract to [v]ariable' })
    -- Extract variable supports only visual mode
    vim.keymap.set('n', '<leader>RI', function()
      require('refactoring').refactor 'Inline Function'
    end, { desc = '[I]nline function' })
    -- Inline func supports only normal
    vim.keymap.set({ 'n', 'x' }, '<leader>Ri', function()
      require('refactoring').refactor 'Inline Variable'
    end, { desc = '[i]nline variable' })
    -- Inline var supports both normal and visual mode

    vim.keymap.set('n', '<leader>Rb', function()
      require('refactoring').refactor 'Extract Block'
    end, { desc = 'exctract [b]lock' })
    vim.keymap.set('n', '<leader>Rbf', function()
      require('refactoring').refactor 'Extract Block To File'
    end, { desc = 'extract [b]lock to [f]ile' })
    -- Extract block supports only normal mode}
  end,
}
