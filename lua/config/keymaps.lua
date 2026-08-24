-- リーダーキーはスペースに設定
vim.g.mapleader = " "
-- keymapにエイリアスを貼る
local keymap = vim.keymap.set
-- <Esc><Esc>でハイライトをリセット
keymap("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { silent = true })
-- <Leader>tでターミナルを開く
keymap("n", "<Leader>t", ":bo term<CR>")
-- Ctrl-Tでタブを開く
keymap("n", "<C-t>", ":tabnew<CR>", { silent = true })
-- <Leader>tでNeotreeを起動
keymap("n", "<Leader>e", ":Neotree toggle<CR>")
-- Uでredo
keymap("n", "U", "<C-r>")
-- 行を折り返して移動する
keymap("n", "j", "gj")
keymap("n", "k", "gk")
-- 英字キーボード用に<Leader>;でコマンドラインモードに移行
keymap("n", ";", ":")
-- <Leader>+hjklで画面移動
-- <Leader>hだけ、他のコマンドの候補があるため、<Leader>hhでも動けるように
keymap("n", "<Leader>h", "<C-w>h")
keymap("n", "<Leader>hh", "<C-w>h")
keymap("n", "<Leader>j", "<C-w>j")
keymap("n", "<Leader>k", "<C-w>k")
keymap("n", "<Leader>l", "<C-w>l")
-- jkでノーマルモードに入る
keymap("i", "jk", "<Esc>")
-- <や>したときに前回のvisual選択を保持
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
-- ターミナルモード時にjkでターミナルノーマルモードに移行
keymap("t", "jk", "<C-\\><C-n>")
