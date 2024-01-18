-- https://vi.stackexchange.com/questions/37187/how-can-i-port-nmap-map-and-imap-commands-to-lua-configuration
function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, {noremap=true, silent=true})
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

imap(';;', '<Esc>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- trim whitespace on save automatically on save
vim.api.nvim_create_autocmd( { "BufWritePre" }, {
    pattern = { "*" },
    command = [[ %s/\s\+$//e ]],
})

-- save when hitting space
if (vim.bo.buftype ~= 'terminal') then
    map('n', '<Space>', ':w <CR>')
end
