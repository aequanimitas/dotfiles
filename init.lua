vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require('hta.core.lazy')
require('hta.core.colors')
require('hta.core.keymaps')
require('hta.core.opts')
require('hta.plugins.telescope')
require('hta.plugins.treesitter')
require('hta.plugins.cmp')
require('hta.plugins.mason')
require('hta.plugins.lsp')
