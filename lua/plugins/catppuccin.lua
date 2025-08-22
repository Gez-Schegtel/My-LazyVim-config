return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- cargar en el arranque
    priority = 1000, -- antes que otros plugins
    opts = {
      -- elige el sabor por defecto
      flavour = "mocha", -- "latte", "frappe", "macchiato" o "mocha"
      -- o autodetecta según :set background
      -- flavour = "auto",
      background = { light = "latte", dark = "mocha" },

      -- Activa integraciones automáticamente (útil en LazyVim)
      auto_integrations = true,
    },
  },

  -- Haz que LazyVim use Catppuccin al iniciar
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- también puedes poner "catppuccin-mocha", etc.
    },
  },

  -- (Opcional) bufferline con la paleta de Catppuccin
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      local ok, cat = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok then
        local f = cat.get_theme or cat.get -- compat según versión
        if type(f) == "function" then
          opts.highlights = f()
        end
      end
    end,
  },
}
