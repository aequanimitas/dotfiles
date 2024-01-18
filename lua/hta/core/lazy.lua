-- because everything is easier in
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- setup here, then require "plugins" in init.lua after this is setup
require("lazy").setup({
    spec = {
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.5',
            -- or                              , branch = '0.1.x',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { 'https://github.com/rose-pine/neovim', name = 'rose-pine', lazy = true },

        -- syntax highlighting
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
    }
})
