local builtin = require('telescope.builtin')
local frappe = require("catppuccin.palettes").get_palette "frappe"
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fk', builtin.commands, {})


-- local colors = require('base16-colorscheme').colors
local TelescopeColor = {
    -- TelescopeMatching = { fg = colors.base08 },
    -- TelescopeSelection = { fg = colors.base05, bg = colors.base02, bold = true },
    --
    TelescopePromptTitle = { bg = frappe.teal, fg = frappe.crust },
    TelescopePreviewTitle = { bg = frappe.pink, fg = frappe.crust },
    TelescopeResultsTitle = { bg = frappe.yellow, fg = frappe.crust },
    --
    -- TelescopePromptPrefix = { bg = colors.base00 },
    --
    -- TelescopePromptNormal = { bg = colors.base00 },
    -- TelescopeResultsNormal = { bg = colors.base00 },
    -- TelescopePreviewNormal = { bg = colors.base00 },
    --
    -- TelescopePromptBorder = { bg = colors.base00, fg = colors.base06 },
    -- TelescopeResultsBorder = { bg = colors.base00, fg = colors.base06 },
    -- TelescopePreviewBorder = { bg = colors.base00, fg = colors.base06 },
}

for hl, col in pairs(TelescopeColor) do
    vim.api.nvim_set_hl(0, hl, col)
end
