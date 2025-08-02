vim.loader.enable()
---- Local Setting -----
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

---- mini.nvim's plugin ----
now(function()
    require('mini.basics').setup()
    require('mini.extra').setup()
end)

now(function()
    require('mini.notify').setup()
    require('mini.statusline').setup()
end)

later(function()
    require('mini.git').setup()
    require('mini.diff').setup()
end)

later(function()
    require('mini.bracketed').setup()
end)

now(function()
    require('mini.pairs').setup()
    require('mini.surround').setup()
end)

later(function()
    require('mini.cursorword').setup({ delay = 150 })
    require('mini.indentscope').setup({ delay = 150 })
    require('mini.tabline').setup()
end)

later(function()
    require('mini.completion').setup({
        window = {
            info = { border = 'single' },
            signature = { border = 'single' },
        },
        lsp_completion = {
            source_func = 'completefunc',
            auto_setup = true,
            process_items = function(items, base)
                items = vim.tbl_filter(function(x)
                    return x.kind ~= 1 and x.kind ~= 15
                end, items)
                return MiniCompletion.default_process_items(items, base)
            end,
        },
    })
end)

-- vim.cmd.colorscheme('tokyonight')

-- Vim.cmd [[
--     highlight Normal guibg=none
--     highlight NonText guibg=none
--     highlight Normal ctermbg=none
--     highlight NonText ctermbg=none
-- ]]
