return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    lazy = false,
    init = function()
      -- estas son variables de configuración de Molten
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
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
      { "<leader>mv", "<cmd>MoltenEvaluateVisual<cr>", desc = "Molten: eval visual" },
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
