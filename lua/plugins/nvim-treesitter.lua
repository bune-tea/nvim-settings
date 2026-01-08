-- 構文ハイライトをきれいに
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "ruby", "javascript" },
            highlight = { enable = true },
        })
    end,
}
