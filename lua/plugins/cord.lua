return {
  "vyfor/cord.nvim",
  config = function()
    require("cord").setup({
      display = {
        theme = "default", -- Elige entre "default", "atom" o "catppuccin"
      },
    })
  end,
}
