local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local colors = require('base16-colorscheme').colors
local TelescopeColor = {
    TelescopeMatching = { fg = colors.base08 },
    TelescopeSelection = { fg = colors.base05, bg = colors.base02, bold = true },

    TelescopePromptTitle = { bg = colors.base0A, fg = colors.base01 },
    TelescopePreviewTitle = { bg = colors.base0D, fg = colors.base01 },
    TelescopeResultsTitle = { bg = colors.base0E, fg = colors.base01 },

    TelescopePromptPrefix = { bg = colors.base00 },

    TelescopePromptNormal = { bg = colors.base00 },
    TelescopeResultsNormal = { bg = colors.base00 },
    TelescopePreviewNormal = { bg = colors.base00 },

    TelescopePromptBorder = { bg = colors.base00, fg = colors.base06 },
    TelescopeResultsBorder = { bg = colors.base00, fg = colors.base06 },
    TelescopePreviewBorder = { bg = colors.base00, fg = colors.base06 },
}

for hl, col in pairs(TelescopeColor) do
    vim.api.nvim_set_hl(0, hl, col)
end
