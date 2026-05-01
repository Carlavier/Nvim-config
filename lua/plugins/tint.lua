return {
  'levouh/tint.nvim',
  config = function()
    require('tint').setup({
      tint = -70,
      filter = function(bufnr)
        local ft = vim.api.nvim_get_option_value('filetype', { buf = bufnr })
        local buftype = vim.api.nvim_get_option_value('buftype', { buf = bufnr })

        if ft == 'trouble' or buftype == 'floating' then return false end
        return true
      end,
    })
  end,
}
