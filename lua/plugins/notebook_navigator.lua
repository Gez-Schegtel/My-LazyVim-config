return {
  {
    "GCBallesteros/NotebookNavigator.nvim",
    dependencies = { "echasnovski/mini.comment", "anuvyklack/hydra.nvim" },
    opts = { repl_provider = "molten", syntax_highlight = true },
    keys = {
      {
        "]h",
        function()
          require("notebook-navigator").move_cell("d")
        end,
        desc = "Siguiente celda",
      },
      {
        "[h",
        function()
          require("notebook-navigator").move_cell("u")
        end,
        desc = "Celda anterior",
      },
      {
        "<leader>X",
        function()
          require("notebook-navigator").run_cell()
        end,
        desc = "Ejecutar celda # %%",
      },
    },
  },
}
