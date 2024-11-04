return {
    {
        "morhetz/gruvbox",
        lazy = false,
        priority = 1000,
        config = function()
            -- Set Gruvbox contrast options
            vim.g.gruvbox_contrast_dark = "hard"
            vim.g.gruvbox_contrast_light = "medium"

            -- Customize highlighting for the "Error" group
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "gruvbox",
                callback = function()
                    vim.cmd([[
                    hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=#FCE8C3 guibg=#fb4934
                    ]])
                end,
            })

            -- Load the Gruvbox colorscheme
            vim.cmd.colorscheme("gruvbox")
        end,
    },
    {
        "vim-airline/vim-airline",
        dependencies = { "vim-airline/vim-airline-themes" },
        config = function()
            -- Airline Settings
            vim.g.airline_symbols_ascii = 1
            vim.g.airline_powerline_fonts = 1
            vim.g["airline#extensions#tabline#enabled"] = 1
            -- vim.g.airline_theme = 'ayu_mirage'  -- Uncomment and set your preferred theme if needed

            -- Define a function for window numbering in Airline
            vim.cmd([[
            function! WindowNumber(...)
            let builder = a:1
            let context = a:2
            call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
            return 0
            endfunction
            silent! call airline#add_statusline_func('WindowNumber')
            silent! call airline#add_inactive_statusline_func('WindowNumber')
            ]])
        end,
    },
    {
        "mhinz/vim-startify",
        lazy = false, -- Load Startify immediately on startup
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Example LSP setup; add language servers here
            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup{}  -- Python language server example
            -- lspconfig.tsserver.setup{} -- TypeScript language server example
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                -- Add any specific settings here if needed
                -- disable_filetype = { "TelescopePrompt", "vim" }, -- Example setting
            })
        end,
    },
    { "andymass/vim-matchup" },
    { "csexton/trailertrash.vim"},
    { "machakann/vim-sandwich" },
    { "tpope/vim-unimpaired"},
    { "sheerun/vim-polyglot"},
    { "tpope/vim-fugitive"},
    { "Luxed/ayu-vim"},
    -- {
    --     'junegunn/fzf',
    --     run = function() vim.fn['fzf#install']() end,
    -- },
    {
        'junegunn/fzf.vim',
        dependencies = {'junegunn/fzf'},
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    }
}
