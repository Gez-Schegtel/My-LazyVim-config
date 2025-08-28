return {
  "folke/which-key.nvim", -- Opcional, pero útil para la visibilidad de los comandos
  config = function()
    -- Proporciona un comando para crear un nuevo notebook de Python en blanco.
    -- Nota: los metadatos son necesarios para que Jupytext entienda cómo analizar el notebook.
    -- Si usas otro lenguaje que no sea Python, debes cambiarlo en la plantilla.
    local default_notebook = [[
      {
        "cells": [
         {
          "cell_type": "markdown",
          "metadata": {},
          "source": [
            ""
          ]
         }
        ],
        "metadata": {
         "kernelspec": {
          "display_name": "Python 3",
          "language": "python",
          "name": "python3"
         },
         "language_info": {
          "codemirror_mode": {
            "name": "ipython"
          },
          "file_extension": ".py",
          "mimetype": "text/x-python",
          "name": "python",
          "nbconvert_exporter": "python",
          "pygments_lexer": "ipython3"
         }
        },
        "nbformat": 4,
        "nbformat_minor": 5
      }
    ]]

    local function new_notebook(filename)
      local path = filename .. ".ipynb"
      local file = io.open(path, "w")
      if file then
        file:write(default_notebook)
        file:close()
        vim.cmd("edit " .. path)
      else
        print("Error: No se pudo abrir el nuevo archivo de notebook para escribir.")
      end
    end

    vim.api.nvim_create_user_command("NewNotebook", function(opts)
      new_notebook(opts.args)
    end, {
      nargs = 1,
      complete = "file",
    })
  end,
}
