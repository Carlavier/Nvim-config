vim.api.nvim_create_autocmd('User', {
  pattern = 'PersistenceLoadPost',
  callback = function()
    local buffers = vim.api.nvim_list_bufs()
    for _, bufnr in ipairs(buffers) do
      if vim.api.nvim_buf_is_loaded(bufnr) then
        local name = vim.api.nvim_buf_get_name(bufnr)
        local buftype = vim.bo[bufnr].buftype

        local is_nameless = (name == '') and (buftype == '')

        local line_count = vim.api.nvim_buf_line_count(bufnr)
        local first_line = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ''
        local is_empty = (line_count <= 1 and first_line == '')

        if is_nameless and is_empty then vim.api.nvim_buf_delete(bufnr, { force = true }) end
      end
    end
  end,
})
