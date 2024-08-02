return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup {}
    -- REQUIRED

    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = '[a]dd' })

    vim.keymap.set('n', '<leader>ar', function()
      harpoon:list():remove()
    end, { desc = '[r]emove' })

    vim.keymap.set('n', '<leader>ac', function()
      harpoon:list():clear()
    end, { desc = '[c]lear' })

    vim.keymap.set('n', '<leader>am', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[menu]' })

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
