-- ディレクトリ構造のツリー表示
return{
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        window = {
            width = 30, -- ここを好きな数字に変えてください（デフォルトは40）
        },
        filesystem = {
            filtered_items = {
                visible = true, -- 最初から隠しファイルなどを薄く表示する
                hide_dotfiles = false, -- ドットファイルを隠さない
                hide_gitignored = false, -- .gitignoreされたファイルを隠さない
            },
        },
    },
}
