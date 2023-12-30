local bufferline = require('bufferline')
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
        background = {
        }
    }
}
