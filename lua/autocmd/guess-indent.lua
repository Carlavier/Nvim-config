vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function() vim.cmd('silent! lua require("guess-indent").set_from_buffer()') end,
})
