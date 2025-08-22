return {
  -- Carga Catppuccin temprano
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
      background = { light = "latte", dark = "mocha" },
      auto_integrations = true,
      integrations = { bufferline = true },
    },
    -- Shim: si tu Catppuccin trae get_theme() pero no get(), creamos un alias
    init = function()
      local ok, mod = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and mod and not mod.get and type(mod.get_theme) == "function" then
        mod.get = mod.get_theme
      end
    end,
  },

  -- Haz que LazyVim use Catppuccin por defecto
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },

  -- (Opcional) extra por si quieres tocar Bufferline desde tu config;
  -- aquí usamos lo que exista: get_theme() o get()
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      if (vim.g.colors_name or ""):find("catppuccin") then
        local ok, mod = pcall(require, "catppuccin.groups.integrations.bufferline")
        if ok then
          local get = mod.get_theme or mod.get
          if type(get) == "function" then
            opts.highlights = get({})
          end
        end
      end
    end,
  },
}
