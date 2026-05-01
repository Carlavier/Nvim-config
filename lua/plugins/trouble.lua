return {
  'folke/trouble.nvim',
  opts = {
    modes = {
      right_panel = {
        mode = 'diagnostics',
        statusline = false,
        focus = true,
        auto_jump = false,
        auto_preview = false,
        auto_close = false,
        win = { position = 'bottom' },
      },
    },
  },
  config = function(_, opts)
    require('trouble').setup(opts)

    local hl = vim.api.nvim_set_hl
    hl(0, 'TroubleNormal', { bg = '#000000', fg = '#ffffff' })
    hl(0, 'TroubleNormalNC', { bg = '#000000', fg = '#ffffff' })

    hl(0, 'TroubleIconError', { fg = '#FF0000', bg = '#000000', bold = true })
    hl(0, 'TroubleIconWarning', { fg = '#FFFF00', bg = '#000000', bold = true })
  end,
  keys = {
    {
      '<leader>qq',
      '<cmd>Trouble right_panel toggle<cr>',
      desc = 'Dianostics [Q]uickfix list (Trouble)',
    },
  },
}
