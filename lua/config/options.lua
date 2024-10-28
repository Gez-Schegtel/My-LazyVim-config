-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Archivo: ~/.config/nvim/lua/config/options.lua
-- No sé qué tan necesario o realmente útil sea definir lo siguiente en la variable opt.
local opt = vim.opt

opt.autoindent = true -- Mantiene la indentación en nuevas líneas
opt.smartindent = true -- Hace que NeoVim indente automáticamente en ciertas estructuras de código (como bloques if, for, etc.).
opt.tabstop = 2 -- Número de espacios que representa un tabulador
opt.shiftwidth = 2 -- Número de espacios para la indentación automática
opt.expandtab = false -- No convierte tabuladores en espacios
opt.smarttab = true -- Ajusta el comportamiento del Tab según la configuración de shiftwidth y tabstop.

vim.diagnostic.enable(false) -- Desactivo los diagnósticos al inicio
