local bufferline = require('bufferline')
local colors = require('base16-colorscheme').colors
bufferline.setup {
    options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        enforce_regular_tabs = false,
        show_duplicate_prefix = true,
    },

    highlights = {
            fill = {
                fg = colors.base04,
                bg = colors.base01, 
            },
            background = {
                fg = colors.base04,
                bg = colors.base00, 
            },
            tab = {
                fg = colors.base04,
                bg = colors.base0A, 
            },
            tab_selected = {
                fg = colors.base04,
                bg = colors.base01, 
            },
            tab_separator = {
                fg = colors.base01, 
                bg = colors.base01, 
            },
            buffer_selected = {
                fg = colors.base04,
                bg = colors.base00, 
                bold = true,
                italic = true,
            },
            buffer_visible = {
                fg = colors.base0F,
                bg = colors.base01, 
            },
            duplicate_selected = {
                fg = colors.base04,
                bg = colors.base00, 
                italic = true,
            },
            duplicate_visible = {
                fg = colors.base04,
                bg = colors.base00, 
                italic = true,
            },
            duplicate = {
                fg = colors.base04,
                bg = colors.base00, 
                italic = true,
            },
            separator_selected = {
                fg = colors.base01,
                bg = colors.base01, 
            },
            separator_visible = {
                fg = colors.base01,
                bg = colors.base01, 
            },
            separator = {
                fg = colors.base01,
                bg = colors.base01, 
            },
            --modified = {
            --    fg = '<colour-value-here>',
            --    bg = '<colour-value-here>',
            --},
            --modified_visible = {
            --    fg = '<colour-value-here>',
            --    bg = '<colour-value-here>',
            --},
            --modified_selected = {
            --    fg = '<colour-value-here>',
            --    bg = '<colour-value-here>',
            --},
            indicator_visible = {
                fg = colors.base01,
                bg = colors.base01, 
            },
            indicator_selected = {
                fg = colors.base01,
                bg = colors.base01, 
            },
    }
}
