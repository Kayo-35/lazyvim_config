return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Add blade parser
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, { "blade", "php" })

    -- Configure custom filetypes if needed
    opts.additional_vim_regex_highlighting = { "blade" }
  end,
}

