return {
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    lazy = false, -- imprescindible para abrir .ipynb como texto y no JSON
    init = function()
      -- Asegurá que Nvim vea el CLI de jupytext dentro de tu venv
      local venv_bin = vim.fn.expand("~/.venvs/nvim/bin")
      if vim.fn.isdirectory(venv_bin) == 1 then
        vim.env.PATH = venv_bin .. ":" .. vim.env.PATH
      end
    end,
  },
}
