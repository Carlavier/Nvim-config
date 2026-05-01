return {
  {
    'folke/persistence.nvim',
    event = 'BufReadPre',
    opts = {},
    config = function(_, opts)
      local persistence = require('persistence')
      persistence.setup(opts)

      -- vim.keymap.set('n', '<leader>qs', function() persistence.select() end, { desc = '[S]elect Session' })
      -- vim.keymap.set('n', '<leader>qd', function() persistence.stop() end, { desc = "[D]on't Save Session" })
      -- vim.keymap.set('n', '<leader>qa', function() persistence.start() end, { desc = 'St[A]rt Save Session' })
    end,
  },
}
