return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup({
      Manual_mode = false,
      detection_methods = { 'pattern', 'lsp' },
      patterns = { '.git', 'pyproject.toml', 'package.json', 'Makefile' },
    })
  end,
}
