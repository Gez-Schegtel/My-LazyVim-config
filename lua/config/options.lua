-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.diagnostic.enable(false) -- Desactivo los diagnósticos al inicio
vim.opt.cursorline = false -- Desactivé el highlight de la línea donde está el cursor.
vim.opt.spelllang = { "en", "es" } -- Con esto podemos agregar al corrector ortográfico los idiomas inglés y español al mismo tiempo.
