return {
    "folke/noice.nvim",
    opts = {
        routes = {
            {
                filter = {
                    event = "notify",
                    kind = "info",
                    any = {
                        { find = "No information available" },
                    },
                },
                opts = { skip = true },
            },
        },
        lsp = {
            progress = {
                enabled = false, -- This turns off the bottom-right LSP progress messages
            },
            hover = {
                opts = {
                    max_width = 80, -- Clamps the box width so it doesn't stretch across the monitor
                    max_height = 10, -- Prevents large MDN HTML/CSS documentation from taking up the screen
                },
            },
            signature = {
                opts = {
                    max_width = 80,
                    max_height = 10,
                },
            },
        },
    },
}
