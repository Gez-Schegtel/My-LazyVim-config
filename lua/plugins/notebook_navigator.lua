return {
  {
    "GCBallesteros/NotebookNavigator.nvim",
    dependencies = { "echasnovski/mini.comment", "anuvyklack/hydra.nvim", "benlubas/molten-nvim" },
    opts = { repl_provider = "molten", syntax_highlight = true },
    keys = {
      {
        "<localleader>c",
        function()
          require("notebook-navigator").move_cell("d")
        end,
        desc = "Siguiente celda",
      },
      {
        "<localleader>C",
        function()
          require("notebook-navigator").move_cell("u")
        end,
        desc = "Celda anterior",
      },
      {
        "<localleader>x",
        function()
          require("notebook-navigator").run_cell()
        end,
        desc = "Ejecutar celda # %%",
      },
      {
        "<localleader>nc",
        function()
          require("notebook-navigator").add_cell_below()
        end,
        desc = "Insertar celda debajo",
      },
      {
        "<localleader>nC",
        function()
          require("notebook-navigator").add_cell_above()
        end,
        desc = "Insertar celda encima",
      },
    },
  },
}
