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
-- LSPがアタッチされたときのキーマッピング
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- バッファローカルなキーマップ関数
    local opts = { buffer = ev.buf }
    -- キー設定
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)      -- 宣言へジャンプ
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)       -- 定義へジャンプ (よく使う)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)             -- カーソル下の説明を表示 (よく使う)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)   -- 実装へジャンプ
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)-- シグネチャヘルプ
    vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts)   -- 変数名の変更 (超便利)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)       -- 参照元を一覧表示
    -- エラー表示の操作
    vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, opts) -- エラー詳細をフロート表示
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)    -- 前のエラーへ
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)    -- 次のエラーへ
  end,
})
