return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-cmdline", -- Soporte para autocompletado en la línea de comandos
    "hrsh7th/cmp-path", -- Autocompletado de rutas en la commandline
  },
  opts = function(_, opts)
    local cmp = require("cmp")

    -- Configuración de autocompletado en la commandline
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "cmdline" }, -- Completa comandos de Neovim
        { name = "path" }, -- Completa rutas de archivos
      }),
    })

    return opts
  end,
}
