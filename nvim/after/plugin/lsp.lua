local lsp = require("lsp-zero")
lsp.extend_lspconfig()
lsp.preset("recommended")

require("mason").setup()
require("mason-lspconfig").setup({
	--ensure_installed = { "lua-language-server" }

	-- ensure_installed = { "lua_ls", "pyright", "bashls", "tsserver", "html", "cssls", "arduino_language_server", "curlylint", "cpplint", "cpptools" }
	ensure_installed = { "lua_ls", "pyright", "bashls", "tsserver", "html", "cssls", "arduino_language_server", "clangd", "ast_grep" }
})

require("lspconfig").lua_ls.setup {}
require('lspconfig').pyright.setup {}
require('lspconfig').bashls.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').html.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').arduino_language_server.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').ast_grep.setup{}

-- is cpplint working?

-- COMPLETION

-- Set up nvim-cmp
local cmp = require('cmp')

local cmp_mappings = {
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),  -- Cycle to the next completion
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),  -- Cycle to the previous completion
}

-- Configure nvim-cmp

require("cmp_dictionary").setup({
  paths = { "/usr/share/dict/words" },
  exact_length = 2,
})

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- for luasnip users
        end,
    },
    mapping = cmp.mapping.preset.insert(cmp_mappings),
    sources = {
        {
			name = 'path'
		},
        {
			name = 'nvim_lsp',
			max_item_count = 7,
		},
        -- {
		-- 	name = 'pyright'
		-- },
        -- {
		-- 	name = 'clangd'
		-- },
		-- {
		-- 	name = 'html'
		-- },
        -- {
		-- 	name = 'cssls'
		-- },
        -- {
		-- 	name = 'bashls'
		-- },
        {
			name = 'luasnip'
		},
        {
			name = 'buffer',
			max_item_count = 8,
		},
		{
			name = "dictionary",
			keyword_length = 2,
			max_item_count = 6,
		},
    },
	-- completion = {
	-- 	completeopt = 'menu,menuone,noinsert', -- Set completion options - what is this?
	-- 	max_item_count = 5,                        -- Global limit for completion items
	-- },
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

-- English

-- require("cmp").setup({
--   -- other settings
--   sources = {
--     -- other sources
--     {
--       name = "dictionary",
--       keyword_length = 2,
--     },
--   }
-- })


-- Setup LSP servers
lsp.setup()
