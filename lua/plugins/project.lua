return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup({
      Manual_mode = false,
      detection_methods = { 'lsp', 'pattern' },
      patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json' },
    })
  end,
}
