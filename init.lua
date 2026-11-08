-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Mapeia ® para barra invertida
vim.keymap.set({ "i", "c" }, "®", "\\", { remap = false, silent = true })

-- Mapeia '°' para inserir '|'
vim.keymap.set({ "i", "c" }, "°", "|", { remap = false, silent = true })
