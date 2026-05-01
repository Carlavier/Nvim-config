return {
  'famiu/bufdelete.nvim',
  config = function() vim.keymap.set('n', '<leader>x', '<cmd>Bdelete<CR>', { desc = 'Close Buffer' }) end,
}
