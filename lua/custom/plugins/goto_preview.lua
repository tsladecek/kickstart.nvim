return {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
    vim.keymap.set('n', 'gpd', "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { desc = '[g]oto [p]review [d]efinition', noremap = true })
    vim.keymap.set(
      'n',
      'gpt',
      "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
      { desc = '[g]oto [p]review [t]ype definition', noremap = true }
    )
    vim.keymap.set(
      'n',
      'gpi',
      "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
      { desc = '[g]oto [p]review [i]mplementation', noremap = true }
    )
    vim.keymap.set('n', 'gpD', "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { desc = '[g]oto [p]review [D]eclaration', noremap = true })
    vim.keymap.set('n', 'gpr', "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { desc = '[g]oto [p]review [r]eferences', noremap = true })
    vim.keymap.set('n', 'gpc', "<cmd>lua require('goto-preview').close_all_win()<CR>", { desc = '[g]oto [p]review [c]lose', noremap = true })
  end,
}
