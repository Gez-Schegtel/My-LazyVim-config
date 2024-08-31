-- Link al plugin: https://github.com/lambdalisue/vim-suda

return {
  "lambdalisue/suda.vim",
  version = "*", -- Usa la versión más reciente del plugin
  config = function()
    vim.g.suda_smart_edit = 1 -- Configuración opcional para habilitar la edición inteligente
  end,
}
