-- エイリアスを貼る
local opt = vim.opt

-- コーディングをutf8に
opt.fenc = "utf-8"
-- ファイルのバックアップを取らない
opt.backup = false
-- vimの外でファイルの中身が変更された際に自動で読み直す
opt.autoread = true
-- バッファを隠す
opt.hidden = true
-- コマンドを画面の最下部に表示する
opt.showcmd = true
-- ヘルプを日本語で表示
opt.helplang = { "ja", "en" }
-- 行番号の表示
opt.number = true
-- ベルを鳴らさない
opt.belloff = "all"
-- 行を強調する
opt.cursorline = true
-- 閉じかっこを強調
opt.showmatch = true
-- 常に下にステータス行を表示
opt.laststatus = 2
-- 補完機能の設定
opt.wildmode = "list:longest"
-- タブを空白に置き換える
opt.expandtab = true
-- タブ幅をスペース4つに
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- 行を挿入したときに今の行とインデントを揃える
opt.autoindent = true
-- インデントの自動挿入
opt.smartindent = true
-- 大文字小文字を区別せずに検索する
opt.ignorecase = true
-- 大文字が含まれているときは大文字小文字を区別して検索する
opt.smartcase = true
-- 検索コマンドを打ち込んでいる間もパターンを強調する
opt.incsearch = true
-- ファイル検索が末尾まで行ったら先頭から再び検索する
opt.wrapscan = true
-- :nohlsearchをするまで強調する
opt.hlsearch = true
-- 色鮮やかに
opt.termguicolors = true
-- 制御文字の可視化
opt.list = true
-- 不要なプロバイダーを無効化（起動速度も少し上がります）
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
-- python3のパスを指定
-- vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/versions/3.13.7/bin/python")
