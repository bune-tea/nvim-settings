require('config.keymaps')
require('config.settings')
require('config.autocmds')
require('config.usercmds')
-- lazy.nvimのインストール（自動）
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- プラグインのセットアップ
require("lazy").setup("plugins")
