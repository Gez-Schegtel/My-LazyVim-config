return {

  -- ============ Molten (Jupyter kernels) ============
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
    end,
    keys = {
      { "<leader>mi", ":MoltenInit<CR>", desc = "Molten: inicializar kernel" },
      { "<leader>ml", ":MoltenEvaluateLine<CR>", desc = "Molten: ejecutar línea" },
      { "<leader>mo", ":MoltenEvaluateOperator<CR>", desc = "Molten: operador (selección)" },
      { "<leader>mr", ":MoltenReevaluateCell<CR>", desc = "Molten: re-ejecutar celda" },
      { "<leader>ms", ":MoltenShowOutput<CR>", desc = "Molten: mostrar output" },
      { "<leader>mI", ":MoltenInterrupt<CR>", desc = "Molten: interrumpir" },
      { "<leader>mR", ":MoltenRestart<CR>", desc = "Molten: reiniciar kernel" },
    },
  },

  -- ============ Notebook Navigator (celdas estilo VS Code) ============
  {
    "GCBallesteros/NotebookNavigator.nvim",
    event = "VeryLazy",
    dependencies = {
      "echasnovski/mini.comment", -- para comentar celdas
      "anuvyklack/hydra.nvim", -- modo "hydra" opcional
      -- REPL providers soportados: iron.nvim, toggleterm.nvim o molten-nvim
      "benlubas/molten-nvim", -- lo usamos como REPL provider
    },
    keys = {
      {
        "]h",
        function()
          require("notebook-navigator").move_cell("d")
        end,
        desc = "Ir a celda abajo",
      },
      {
        "[h",
        function()
          require("notebook-navigator").move_cell("u")
        end,
        desc = "Ir a celda arriba",
      },
      {
        "<leader>X",
        function()
          require("notebook-navigator").run_cell()
        end,
        desc = "Ejecutar celda",
      },
      {
        "<leader>x",
        function()
          require("notebook-navigator").run_and_move()
        end,
        desc = "Ejecutar celda y bajar",
      },
      {
        "<leader>h",
        function()
          require("notebook-navigator").activate_hydra()
        end,
        desc = "Hydra de celdas",
      },
    },
    opts = {
      repl_provider = "molten", -- usa Molten como backend de ejecución
      syntax_highlight = true, -- resalta los marcadores de celda
      -- cell_markers = { python = "# %%" }, -- por defecto ya usa %% en Python
    },
  },

  -- ============ Jupyter (Jupytext) ============
  {
    "goerz/jupytext.nvim",
    version = "0.2.0",
    opts = {
      -- formato de texto preferido para .ipynb -> script (útil con NotebookNavigator)
      format = "py:percent", -- usa "# %%" como separador de celdas
      autosync = true, -- sincroniza automáticamente con el .ipynb
    },
  },
}
