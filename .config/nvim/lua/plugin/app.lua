---- Local Setting -----
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
    add {
        source = 'folke/tokyonight.nvim',
        --depends = {
        --},
    }
    require('tokyonight').setup({
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
        automatic_installation = true
    })
end)

vim.cmd.colorscheme('tokyonight')

