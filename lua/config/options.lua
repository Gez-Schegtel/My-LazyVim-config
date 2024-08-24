-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Archivo: ~/.config/nvim/lua/config/options.lua
-- No sé qué tan necesario o realmente útil sea definir lo siguiente en la variable opt.
local opt = vim.opt

opt.autoindent = true -- Mantiene la indentación en nuevas líneas
opt.expandtab = false -- No convierte tabuladores en espacios
opt.tabstop = 4 -- Número de espacios que representa un tabulador
opt.shiftwidth = 4 -- Número de espacios para la indentación automática
