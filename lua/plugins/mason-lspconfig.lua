-- lspの設定用プラグイン
return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      -- 補完機能（cmp）と連携するための設定
      local capabilities = cmp_nvim_lsp.default_capabilities()

      -- 自動インストールする言語サーバーのリスト
      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",       -- Lua
          "pyright",      -- Python
          "clangd",       -- C/C++
          "jdtls",        -- Java (※本格的な開発には nvim-jdtls が別途推奨されますが一旦これで)
          "html",         -- HTML
          "cssls",        -- CSS
          "bashls",       -- Bash
          "texlab",       -- LaTeX
        },
        -- サーバーがインストールされたら自動でセットアップするハンドラ
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
            })
          end,
          -- Luaだけ特別な設定が必要な場合が多いので個別に書く例
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = { globals = { "vim" } }, -- "vim" という未定義変数の警告を消す
                },
              },
            })
          end,
        },
      })
    end,
  }
