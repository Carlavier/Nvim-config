vim.api.nvim_create_autocmd('FileType', {
  pattern = 'nvim-undotree',
  callback = function()
    vim.keymap.set('n', 'q', 'G<cmd>q<CR>', { buffer = true, silent = true })
    vim.keymap.set('n', '<Esc>', 'G<cmd>q<CR>', { buffer = true, silent = true })
    vim.keymap.set('n', '<CR>', '<cmd>q<CR>', { buffer = true, silent = true })
  end,
})
