require("kaizen.set")
require("kaizen.remap")
require('kaizen.vars') -- Variables
-- require('kaizen.opts')         -- Options

local augroup = vim.api.nvim_create_augroup
local KaizenGroup = augroup('Kaizen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40
        })
    end
})

autocmd({"BufWritePre"}, {
    group = KaizenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]]
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- sonokai
vim.g.sonokai_style = "atlantis"
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_better_performacne = 1
vim.g.sonokai_transparent_background = 1
vim.sonokai_disable_terminal_colors = 1

vim.colorscheme = "snokai"

-- Disable Vim compatibility mode
vim.cmd('set nocompatible')

-- Enable filetype plugins
vim.cmd('filetype plugin on')

-- Enable syntax highlighting
vim.cmd('syntax on')

