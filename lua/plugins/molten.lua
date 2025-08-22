return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    lazy = false,
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      -- si usás un venv para nvim (opcional, pero recomendado):
      -- vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")
    end,
    keys = {
      { "<leader>mi", "<cmd>MoltenInit python3<cr>", desc = "Molten: iniciar kernel python3" },
      { "<leader>mr", "<cmd>MoltenReevaluateCell<cr>", desc = "Molten: ejecutar celda" },
      { "<leader>me", "<cmd>MoltenEvaluateOperator<cr>", desc = "Molten: eval operador" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<cr>", desc = "Molten: eval línea" },
      { "<leader>mo", "<cmd>MoltenShowOutput<cr>", desc = "Molten: mostrar salida" },
      { "<leader>mh", "<cmd>MoltenHideOutput<cr>", desc = "Molten: ocultar salida" },
      { "<leader>mk", "<cmd>MoltenInterrupt<cr>", desc = "Molten: interrumpir kernel" },
      { "<leader>mR", "<cmd>MoltenRestart!<cr>", desc = "Molten: reiniciar kernel (clear)" },
      { "<leader>mX", "<cmd>MoltenExportOutput<cr>", desc = "Molten: exportar outputs a .ipynb" },
      { "<leader>mI", "<cmd>MoltenImportOutput<cr>", desc = "Molten: importar outputs de .ipynb" },
    },
  },
  {
    -- see the image.nvim readme for more information about configuring this plugin
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- whatever backend you would like to use
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
