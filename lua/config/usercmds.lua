local create_cmd = vim.api.nvim_create_user_command

-- タブ幅を2にする
create_cmd("CT2", function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
end, {})

-- タブ幅を4にする
create_cmd("CT4", function()
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
end, {})
