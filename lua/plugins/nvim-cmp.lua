-- LSPのUI設定
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSPソース
      "hrsh7th/cmp-buffer",   -- バッファ内の単語
      "hrsh7th/cmp-path",     -- ファイルパス
      "L3MON4D3/LuaSnip",     -- スニペットエンジン (必須)
      "saadparwaiz1/cmp_luasnip", -- スニペットソース
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- 候補を上に移動
          ["<C-j>"] = cmp.mapping.select_next_item(), -- 候補を下に移動
          ["<C-Space>"] = cmp.mapping.complete(),     -- 補完メニューを出す
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enterで確定
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- LSPからの候補
          { name = "luasnip" },  -- スニペット
        }, {
          { name = "buffer" },   -- バッファ内の単語
          { name = "path" },     -- パス
        }),
      })
    end,
}
