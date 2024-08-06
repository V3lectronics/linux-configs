local lsp = require("lsp-zero")
lsp.extend_lspconfig()
lsp.preset("recommended")

require("mason").setup()
require("mason-lspconfig").setup({
	--ensure_installed = { "lua-language-server" }

	-- ensure_installed = { "lua_ls", "pyright", "bashls", "tsserver", "html", "cssls", "arduino_language_server", "curlylint", "cpplint", "cpptools" }
	ensure_installed = { "lua_ls", "pyright", "bashls", "tsserver", "html", "cssls", "arduino_language_server", "clangd", "ast_grep" }
})

-- ◍ cpplint (keywords: c, c++)
--     ◍ cpptools (keywords: c, c++, rust)
--     ◍
--
require("lspconfig").lua_ls.setup {}
require('lspconfig').pyright.setup {}
require('lspconfig').bashls.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').html.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').arduino_language_server.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').ast_grep.setup{}


-- COMPLETION

-- Set up nvim-cmp
local cmp = require('cmp')

local cmp_mappings = {
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),  -- Cycle to the next completion
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),  -- Cycle to the previous completion
}

-- Configure nvim-cmp
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For LuaSnip users
        end,
    },
    mapping = cmp.mapping.preset.insert(cmp_mappings),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip' },
    },
})

-- Set preferences for LSP
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        -- error = 'E',
        -- warn = 'W',
        -- hint = 'H',
        -- info = 'I',
		error = '',
        warn = '',
        hint = '',
        info = '',

    },
})

-- Setup LSP servers
lsp.setup()
