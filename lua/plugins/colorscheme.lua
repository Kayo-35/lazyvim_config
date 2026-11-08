return {
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optional: configure global variables before loading the colorscheme
            vim.g.gruvbox_material_enable_italic = 0
            vim.g.gruvbox_material_background = "hard" -- "hard", "medium", or "soft"
            vim.g.gruvbox_material_palette = "material" -- "material", "mix", or "original"
            vim.g.gruvbox_material_transparent_background = 2

            -- Force floating and terminal windows to clear their backgrounds
            vim.api.nvim_create_autocmd("ColorScheme", {
                group = vim.api.nvim_create_augroup("GruvboxTransparencyFix", { clear = true }),
                pattern = "gruvbox-material",
                callback = function()
                    local hl_groups = { "NormalFloat", "FloatBorder", "Terminal", "SnacksNormal", "SnacksTerminal" }
                    for _, group in ipairs(hl_groups) do
                        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
                    end
                end,
            })
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox-material",
        },
    },
}
