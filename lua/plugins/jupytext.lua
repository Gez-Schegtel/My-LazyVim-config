return {
  {
    "GCBallesteros/jupytext.nvim",
    lazy = false, -- imprescindible para abrir .ipynb como texto y no JSON
    config = function()
      require("jupytext").setup({
        style = "markdown", -- usar Markdown en lugar de Python por defecto
        output_extension = "md", -- extensión de salida
        force_ft = "markdown", -- forzar filetype a markdown
      })
    end,
  },
}
