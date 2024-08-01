-- return { -- Useful plugin to show you pending keybinds.
--   'folke/which-key.nvim',
--   event = 'VimEnter', -- Sets the loading event to 'VimEnter'
--   config = function() -- This is the function that runs, AFTER loading
--     require('which-key').setup()
--
--     -- Document existing key chains
--     require('which-key').register {
--       ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
--       ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
--       ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
--       ['<leader>s'] = { name = '[s]earch', _ = 'which_key_ignore' },
--       ['<leader>S'] = { name = '[S]pectre', _ = 'which_key_ignore' },
--       ['<leader>l'] = { name = '[L]ist', _ = 'which_key_ignore' },
--       ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
--       ['<leader>h'] = { name = 'git [H]unk', _ = 'which_key_ignore' },
--       ['gp'] = { name = '[g]oto [p]review', _ = 'which_key_ignore' },
--       ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
--       ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
--     }
--   end,
-- }
return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[r]ename' },
      { '<leader>R', group = '[R]efactor' },
      { '<leader>s', group = '[s]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      { '<leader>l', group = '[l]ist' },
      { '<leader>S', group = '[S]pectre' },
      { '<leader>g', group = '[g]it' },
      { 'gp', group = '[g]oto [p]review' },
    }
  end,
}
