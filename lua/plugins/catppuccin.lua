-- カラースキーム
return {
    "catppuccin/nvim",
    event = { "BufReadPre", "BufNewFile" },
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme catppuccin")
        require("catppuccin").setup({
            flavour = "frappe", -- latte, frappe, macchiato, mocha
        })
    end
}
