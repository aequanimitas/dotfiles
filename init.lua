-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- https://vi.stackexchange.com/questions/37187/how-can-i-port-nmap-map-and-imap-commands-to-lua-configuration
function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, {noremap=true, silent=true})
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

imap(';;', '<Esc>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- commands
-- https://github.com/neovim/neovim/issues/18201#issuecomment-1107665957
-- https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/options.lua
vim.opt.splitright = true
vim.opt.termguicolors = true    -- Enable 24-bit RGB colors
vim.opt.number = true    -- Enable 24-bit RGB colors
vim.opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
--
vim.api.nvim_create_autocmd( { "BufWritePre" }, {
    pattern = { "*" },
    command = [[ %s/\s\+$//e ]],
})

vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- save when hitting space
if (vim.bo.buftype ~= 'terminal') then
    map('n', '<Space>', ':w <CR>')
end

require('hta.core.lazy')
require('hta.core.colors')
require('hta.plugins.telescope')
require('hta.plugins.treesitter')
