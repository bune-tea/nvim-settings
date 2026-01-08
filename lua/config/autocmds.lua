-- エイリアスを張る
local autocmd = vim.api.nvim_create_autocmd

-- ターミナルに移動時にターミナルジョブモードに変更
autocmd({ "TermOpen", "BufEnter" }, {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "terminal" then
            vim.cmd("startinsert")
            vim.opt_local.number = false
            vim.opt_local.relativenumber = false
        end
    end,
})
