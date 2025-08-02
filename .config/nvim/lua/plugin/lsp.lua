---- Local Setting
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later


---- LSP Setting
later(function()
    add {
        source = 'neovim/nvim-lspconfig',
        depends = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
    }
    require('mason').setup()
    require('mason-lspconfig').setup({
        ensure_installed = {
            -- Lua
            'lua_ls',
            -- C
            'clangd',
            -- Python
            'pylsp',
            'pyright',

        },
        automatic_installation = true,
    })

    local lspconfig = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    require('mason-lspconfig').setup({
        function(server_name)
            lspconfig[server_name].setup {
                capabilities = capabilities,
            }
        end,
        ['lua_ls'] = function()
            lspconfig['lua_ls'].setup {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                            pathStrict = true,
                            path = { '?.lua', '?/init.lua' },
                        },
                        completion = { callSnippet = 'Both' },
                        diagnostics = { globals = { 'vim' } },
                        telemetry = { enable = false },
                        workspace = {
                            library = vim.list_extend(vim.api.nvim_get_runtime_file('lua', true),{
                                '${3rd}/luv/library',
                                '${3rd}/busted/library',
                                '${3rd}/luassert/library',
                                vim.api.nvim_get_runtime_file('', true),
                            }),
                            checkThirdParty = 'Disable',
                        },
                    },
                },
            }
        end,
        ['clangd'] = function()
            lspconfig['clangd'].setup{}
        end,
        ['pylsp'] = function()
            lspconfig['pyslp'].setup{}
        end,
        ['pyright'] = function()
            lspconfig['pyright'].setup{}
        end,


    })
end)

---- Diagnostic Setting
vim.diagnostic.config({
   float = {
        border = 'single',
        title = 'Diagnostics',
        header = {},
        suffix = {},
        format = function(diagnostic)
            return string.format('%s \n(%s: %s)',
                                 diagnostic.message,
                                 diagnostic.source,
                                 diagnostic.code
                                )
            end,
    },
    severity_sort  = true,
})
--- Diagnostic Keymaps
local opts = { noremap=true, silent=true }
-- Open Float Window
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- Goto Prevent Diagnostic
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- Goto Next Diagnostic
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)


