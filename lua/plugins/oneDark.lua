require('onedark').setup {
    style = 'darker',
        -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
        treesitter = true
    },
}
require('onedark').load()
