vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    if require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()] then
      require('luasnip').unlink_current()
    end
  end,
})
