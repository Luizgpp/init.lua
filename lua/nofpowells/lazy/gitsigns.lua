return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        signs = {
            add          = { text = '│' },
            change       = { text = '│' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,
        watch_gitdir = {
            follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol',
            delay = 1000,
        },
        update_debounce = 100,
        status_formatter = nil,
        max_file_length = 40000,
        preview_config = {
            border = 'single',
            style = 'minimal',
            relative = 'cursor',
            row = 0,
            col = 1
        },
    },
    keys = {
        -- Navigation
        { "]c",         function() require("gitsigns").next_hunk() end,                 desc = "Next Git hunk" },
        { "[c",         function() require("gitsigns").prev_hunk() end,                 desc = "Previous Git hunk" },

        -- Actions
        { "<leader>hs", function() require("gitsigns").stage_hunk() end,                desc = "Stage hunk" },
        { "<leader>hr", function() require("gitsigns").reset_hunk() end,                desc = "Reset hunk" },
        { "<leader>hu", function() require("gitsigns").undo_stage_hunk() end,           desc = "Undo stage hunk" },
        { "<leader>hS", function() require("gitsigns").stage_buffer() end,              desc = "Stage buffer" },
        { "<leader>hR", function() require("gitsigns").reset_buffer() end,              desc = "Reset buffer" },
        { "<leader>hp", function() require("gitsigns").preview_hunk() end,              desc = "Preview hunk" },
        { "<leader>hb", function() require("gitsigns").blame_line() end,                desc = "Blame line" },
        { "<leader>tb", function() require("gitsigns").toggle_current_line_blame() end, desc = "Toggle line blame" },
        { "<leader>hd", function() require("gitsigns").diffthis() end,                  desc = "Diff against index" },
        { "<leader>td", function() require("gitsigns").toggle_deleted() end,            desc = "Toggle deleted" },

        -- Text object
        { "ih",         function() require("gitsigns").select_hunk() end,               mode = { "o", "x" },        desc = "Select git hunk" },
    },
}
