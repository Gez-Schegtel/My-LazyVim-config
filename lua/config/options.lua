-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.autoindent = true -- Mantiene la indentación en nuevas líneas
vim.opt.smartindent = true -- Hace que NeoVim indente automáticamente en ciertas estructuras de código (como bloques if, for, etc.).
vim.opt.tabstop = 2 -- Número de espacios que representa un tabulador
vim.opt.shiftwidth = 2 -- Número de espacios para la indentación automática
vim.opt.expandtab = false -- No convierte tabuladores en espacios
vim.opt.smarttab = true -- Ajusta el comportamiento del Tab según la configuración de shiftwidth y tabstop.
vim.diagnostic.enable(false) -- Desactivo los diagnósticos al inicio
vim.opt.cursorline = false -- Desactivé el highlight de la línea donde está el cursor.
vim.opt.spelllang = { "en", "es" } -- Con esto podemos agregar al corrector ortográfico los idiomas inglés y español al mismo tiempo.
vim.g.python3_host_prog = vim.fn.expand("/home/juani/.MyEnvs/jupyter-notebooks/bin/python")
