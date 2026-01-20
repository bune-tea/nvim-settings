-- 構文ハイライトをきれいに
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "ruby", "javascript", "java", "markdown", "markdown_inline" },
            highlight = { enable = true },
        })
    end,
}
